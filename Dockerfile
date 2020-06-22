#getting base image from ubuntu
FROM ubuntu

MAINTAINER Anilkumar <anilkumar.mechanical3@gmail.com>

RUN apt-get update

CMD ["echo", "Hello world...! from my first docker image"]
