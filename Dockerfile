FROM ubuntu:14.04

RUN apt-get update

RUN apt-get -y install curl libcurl3 php5-curl

#to install oracle jdk
RUN apt-get install -y python-software-properties
RUN apt-get install software-properties-common -y

RUN add-apt-repository -y ppa:webupd8team/java
RUN apt-get update
RUN echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install -y oracle-java7-installer

# Set the locale
RUN locale-gen en_US.UTF-8  
ENV LANG en_US.UTF-8  
ENV LANGUAGE en_US:en  
ENV LC_ALL en_US.UTF-8

WORKDIR /usr/local/bin

RUN curl -fsSL get.nextflow.io | bash

RUN mkdir -p /home/nextflow
WORKDIR /home/nextflow

