#!/bin/bash
 
source ../common/colors.sh

# In this lab, we will deploy a very simple Python application, 
# test it using Docker, ingest it into Kubernetes, 
# and configure probes to ensure it continues to run. 
# This lab requires the completion of the previous lab, 
# the installation and configuration of a Kubernetes cluster.

# install python
sudo apt -y upgrade
sudo apt install -y python
py_path=$(which python)

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





