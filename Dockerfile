
FROM ubuntu:latest

WORKDIR /usr/src/app

COPY requirements.txt ./

RUN   apt update

RUN apt upgrade -y

RUN apt install vim -y

RUN apt install python3 -y
RUN apt-get -y install python3-pip

RUN pip3 install --no-cache-dir -r requirements.txt


COPY ./Flask/ ./

RUN chmod +x entrypoint.sh

EXPOSE 5000


CMD [ "./entrypoint.sh"]

