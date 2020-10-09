FROM ubuntu: latest
MAINTAINER Kulala Gao "971366892@qq.com"
RUN  apt-get update -y \
    && apt-get install -y python-pip python-dev build-essential

ADD . /flask-app
WORKDIR /flask-app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
cmd ["flask_docker.py"]

