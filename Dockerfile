FROM ubuntu:latest
MAINTAINER Levent YILDIZ <dev.levent.yildiz@gmail.com>
RUN apt-get update
RUN apt-get install openjdk-8-jdk -y
RUN apt-get install -y wget ssh rsync
RUN wget http://www.trieuvan.com/apache/hadoop/common/hadoop-2.7.5/hadoop-2.7.5.tar.gz -P ~/Downloads
RUN tar zxvf ~/Downloads/hadoop-2.7.5.tar.gz  -C /usr/local
RUN mv /usr/local/hadoop-* /usr/local/hadoop

ENV  JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/jre/
ENV  PATH $PATH:$JAVA_HOME/bin
ENV  HADOOP_HOME /usr/local/hadoop
ENV  PATH $PATH:$HADOOP_HOME/bin
ENV  HADOOP_CONF_DIR /usr/local/hadoop/etc/hadoop

RUN hadoop version
