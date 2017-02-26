FROM alpine:3.5

RUN apk update \
  && apk add python3 py3-psycopg2 wget \
  && wget --no-check-certificate https://bootstrap.pypa.io/get-pip.py
  && python3 get-pip.py \
  && cd /usr/bin/ \
  && ln -s pydoc3 pydoc \
  && ln -s python3 python \
  && rm get-pip.py \
  && apk del wget
