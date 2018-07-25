#!/bin/bash
 
#source ../common/colors.sh
source colors.sh

# In this lab, we will deploy a very simple Python application, 
# test it using Docker, ingest it into Kubernetes, 
# and configure probes to ensure it continues to run. 
# This lab requires the completion of the previous lab, 
# the installation and configuration of a Kubernetes cluster.

# install python
sudo apt -y upgrade
sudo apt install -y python
py_path=$(which python)
PWD=`pwd`

# ckad app 1
app_dir="ckad_app_1"
mkdir "$app_dir"
cd "$app_dir"

cat > simple.py <<EOF
#!/$py_path

import time
import socket

while True:
    host = socket.gethostname()
    date = time.strftime("$%Y-%m-%d %H:%M:%S")

    now = str(date)

    f = open("date.out", "a")
    f.write(now + "\n")
    f.write(host + "\n")
    f.close()

    time.sleep(5)

EOF

chmod +x simple.py
./simple.py &
PID="$!"

sleep 30
kill -9 "$PID"

tail date.out

# create a docker file
cat > Dockerfile <<EOF
FROM python:2
ADD simple.py /
## RUN pip install pystrich
CMD ["python", "simple.py"]
EOF

# build container
sudo docker build -t simpleapp

# verify image
sudo docker images

# run and verify container is fine
sudo docker run simpleapp &
PID="$!"
sleep 30
out_file=$(sudo find / -name date.out | grep docker)
tail "$out_file"

# configure local docker repo
sudo apt install -y docker-compose apache2-utils
mkdir -p localdocker/data

cat > localdocker/docker-compose.yaml <<EOF

nginx:
  image: "nginx:1.12"
  ports:
    - 443:443
  links:
    - registry:registry
  volumes:
    - $PWD:/etc/nginx/conf.d
registry:
  image: registry:2
  ports: 
    - 127.0.0.1:5000:5000
  environment:
    REGISTRY_STORAGE_FILESYSTEM_ROOTDIRECTORY: /data
  volumes:
    - $PWD/localdocker/:/data

EOF

cd localdocker

sudo docker-compose up > compose.log 2>&1 &
PID="$!"
curl http://127.0.0.1:5000/v2/
sudo kill -9 $PID

curl -L https://github.com/kubernetes/kompose/releases/download/v1.15.0/kompose-linux-amd64 -o kompose
sudo chmod +x kompose
sudo mv ./kompose /usr/local/bin/kompose

# create volumes
cat > vol1.yaml <<EOF

apiVersion: v1
kind: PersistentVolume
metadata: 
  labels:
    type: local
  name: task-pv-volume
spec:
  accessModes:
  - ReadWriteOnce
  capacity:
    storage: 200Mi
  hostPath:
    path: /tmp/data
  persistentVolumeReclaimPolicy: Retain

EOF

cat > vol2.yaml <<EOF

apiVersion: v1
kind: PersistentVolume
metadata:
  labels:
    type: local
  name: registryvm
spec:
  accessModes:
  - ReadWriteOnce
  capacity:
    storage: 200Mi
  hpstPath:
    path: /tmp/nginx
  persistentVolumeReclaimPolicy: Retain

EOF

kubectl create -f vol1.yaml
kubectl create -f vol2.yaml

# verify
kubectl get pv

# convert 
sudo kompose convert -f docker-compose.yaml -o localregistry.yaml

# verify
cat localregistry.yaml
kubectl get pods, svc, pvc, pv, deploy
sudo systemctl restart docker.service

#
sudo docker pull ubuntu



