FROM debian:9
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt install -y build-essential && \
    apt-get install -y unzip && \
    apt-get install -y wget && \
    apt-get install -y git && \
    wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip && \
    unzip terraform_0.12.7_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    apt-get remove --purge -y unzip wget
