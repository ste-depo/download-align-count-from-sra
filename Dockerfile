FROM pegi3s/sratoolkit
# Based on ubuntu:18.04

MAINTAINER "Stefano de Pretis" ste.depo@gmail.com

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Rome

RUN apt-get update && apt-get install -y bowtie rsem
