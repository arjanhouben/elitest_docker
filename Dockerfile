#Download base image ubuntu 16.04
FROM ubuntu:19.10

#Update Ubuntu Software repository
RUN apt-get update

#Install python and python pip for the python protobuf bindings.
RUN apt-get install -y python2.7 python-pip
RUN pip install protobuf==3.4.0

#Install Cmake
RUN apt-get install -y cmake

RUN apt-get install -y git curl unzip

# instal Protobuf compiler.
RUN curl -OL https://github.com/google/protobuf/releases/download/v3.4.0/protoc-3.4.0-linux-x86_64.zip
RUN unzip protoc-3.4.0-linux-x86_64.zip -d protoc3
RUN chmod a+rx protoc3/bin/*
RUN mv protoc3/bin/* /usr/local/bin/
RUN mv protoc3/include/* /usr/local/include/

RUN apt-get install -y gcovr

RUN apt-get install -y gcc-arm-none-eabi
RUN apt-get install -y srecord

RUN pip install lizard

RUN apt-get install -y clang
