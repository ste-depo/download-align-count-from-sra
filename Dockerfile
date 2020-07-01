FROM pegi3s/sratoolkit
# Based on ubuntu:18.04

MAINTAINER "Stefano de Pretis" ste.depo@gmail.com

## Configure default locale
RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
	&& locale-gen en_US.utf8 \
	&& /usr/sbin/update-locale LANG=en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome
RUN apt-get update && apt-get install -y wget bowtie rsem

## download and complie samtools
RUN wget https://github.com/samtools/samtools/releases/download/1.9/samtools-1.9.tar.bz2
RUN tar -vxjf samtools-1.9.tar.bz2
RUN cd samtools-1.9
RUN make
