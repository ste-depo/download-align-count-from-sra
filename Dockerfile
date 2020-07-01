FROM pegi3s/sratoolkit
# Based on ubuntu:18.04

MAINTAINER "Stefano de Pretis" ste.depo@gmail.com

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome
RUN apt-get update && apt-get install -y locales locales-all wget bowtie rsem

## Configure default locale
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

## download and complie samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2
RUN tar -vxjf samtools-1.9.tar.bz2
RUN cd samtools-1.9
RUN make
