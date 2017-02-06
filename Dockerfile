FROM ubuntu:14.04

RUN mkdir -p /usr/share/android
RUN mkdir -p /usr/share/src
WORKDIR /usr/share/src


RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y unzip
RUN wget http://wufan.oss-cn-qingdao.aliyuncs.com/server/jdk-7u75-linux-x64.tar.gz
RUN wget http://wufan.oss-cn-qingdao.aliyuncs.com/server/gradle-2.14.1-all.zip
RUN tar -zxvf jdk-7u75-linux-x64.tar.gz
RUN unzip gradle-2.14.1-all.zip

ENV JAVA_HOME /usr/share/android/jdk1.7.0_75
ENV JRE_HOME /usr/share/android/jdk1.7.0_75/jre
ENV GRADLE_HOME /usr/share/android/gradle-2.14.1
ENV CLASSPATH .:${JAVA_HOME}/lib:${JRE_HOME}/lib
ENV PATH ${JAVA_HOME}/bin:${GRADLE_HOME}/bin:$PATH

ARG MAVEN_VERSION=3.3.9
ARG USER_HOME_DIR="/root"

RUN mkdir -p /Users/gthowe/Library/Android/sdk


#gradle init wrapper
#gradle assembleRelease
