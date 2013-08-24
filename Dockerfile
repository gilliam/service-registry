FROM ubuntu:12.04
MAINTAINER Johan Rydberg <johan.rydberg@gmail.com>
ADD . /app
RUN apt-get install -y python python-dev python-setuptools
RUN apt-get install -y build-essential libevent-dev
RUN easy_install pip
RUN pip install -r /app/requirements.txt
EXPOSE 3222
WORKDIR /app
ENTRYPOINT ["/usr/bin/python", "-m", "hera.script", "-p", "3222"]
