FROM alpine:3.7
MAINTAINER Utsob Roy <uroybd@gmail.com>

ENV PYTHONBUFFERED 1

RUN apk --no-cache add python3 py3-psycopg2 \
  && apk --no-cache add --virtual build-deps ca-certificates wget \
  && wget https://bootstrap.pypa.io/get-pip.py \
  && python3 get-pip.py \
  && cd /usr/bin/ \
  && ln -s pydoc3 pydoc \
  && ln -s python3 python \
  && rm /get-pip.py \
  && apk del build-deps
