FROM ubuntu:bionic

RUN apt-get update &&  apt-get install -y   netcat

EXPOSE 8080
COPY simpleserver.sh /opt/s.sh
WORKDIR /opt/

CMD ["sh", "s.sh", "8080"]
