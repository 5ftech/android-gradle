FROM daocloud.io/brave8/maven-jdk7:latest

RUN mkdir -p /usr/share/android
RUN mkdir -p /usr/share/src
WORKDIR /usr/share/android

RUN apt-get install -y unzip
RUN wget http://wufan.oss-cn-qingdao.aliyuncs.com/server/gradle-2.14.1-all.zip

RUN unzip gradle-2.14.1-all.zip
ENV GRADLE_HOME /usr/share/android/gradle-2.14.1
ENV PATH ${JAVA_HOME}/bin:${GRADLE_HOME}/bin:$PATH

RUN mkdir -p /Users/gthowe/Library/Android/sdk
RUN mkdir -p /root/.gradle/
WORKDIR /usr/share/src

#gradle init wrapper
#gradle assembleRelease
