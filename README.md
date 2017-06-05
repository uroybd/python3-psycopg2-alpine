# python3-psycopg2-alpine

A python3 alpine image with psycopg2 support for docker. Especially useful for making slim django applications with postgresql back-end.

You may want to install pillow here, use `apk update && apk add py3-pillow`.


## Versions and resepctive `Docerfile`:
* `3.5` with python 3.5.x and psycopg2 2.6.x ([Dockerfie](https://github.com/uroybd/python3-psycopg2-alpine/blob/3.5/Dockerfile))
* `3.6`, `latest` with python 3.6.x and psycopg2 2.7.x ([Dockerfie](https://github.com/uroybd/python3-psycopg2-alpine/blob/master/Dockerfile))
* `3.7`, `edge` with python 3.6.x and psycopg2 2.7.x ([Dockerfie](https://github.com/uroybd/python3-psycopg2-alpine/blob/3.7/Dockerfile))

### Why this Image?

I tried python-alpine 3.5 and 3.6 but getting support for python libraries in alpine image is a bit tricky. So I made this image based on alpine:3.5 to get official support for python3 and psycopg2 library from alpine. It is working fine and smaller than even official python 3.5 image in compressed form. It is a good image to start a Django project.
