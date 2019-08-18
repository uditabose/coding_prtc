# python runtime
FROM python:2.7-slim

# set workdir
WORKDIR /app

# copy stuff
COPY . /app

# install packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# open port 80
EXPOSE 80

# define env variable
ENV NAME World

# run application
ENTRYPOINT ["python", "app.py"]
