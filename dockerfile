FROM ubuntu:latest
MAINTAINER Kulala Gao "971366892@qq.com"
RUN apt-get update -y \
    && apt-get install -y python3.4
    && apt-get install -y python3-pip

ADD . /flask-app
WORKDIR /flask-app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
cmd ["flask_docker.py"]

