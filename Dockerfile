FROM alpine:3.6
MAINTAINER Utsob Roy <uroybd@gmail.com>

RUN apk update \
  && apk --no-cache add python3 \
     py3-psycopg2 \
     wget \
  && wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py \
  && python3 get-pip.py \
  && cd /usr/bin/ \
  && ln -s pydoc3 pydoc \
  && ln -s python3 python \
  && rm /get-pip.py \
  && apk del wget \
  && ln -s pip3 pip
