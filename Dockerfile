FROM alpine:3.6
MAINTAINER Utsob Roy <uroybd@gmail.com>

ENV PYTHONBUFFERED 1

RUN apk add --no-cache \
        python3 \
        py3-psycopg2 \
  && python3 -m ensurepip \
  && cd /usr/bin/ \
  && ln -s pydoc3 pydoc \
  && ln -s python3 python \
  && ln -s pip3 pip
