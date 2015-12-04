FROM debian:latest
MAINTAINER ytnobody <ytnobody@gmail.com>

RUN mkdir /opt/oak -p
WORKDIR /opt/oak
RUN apt-get update && apt-get install wget python-mysqldb -y && apt-get clean
RUN wget http://openarkkit.googlecode.com/files/openark-kit-196-1.deb
RUN dpkg -i ./openark-kit-196-1.deb

