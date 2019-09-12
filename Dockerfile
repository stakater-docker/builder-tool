FROM debian:9
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt install -y build-essential && \
    apt-get install -y unzip && \
    apt-get install -y wget && \
    apt-get install -y git && \
    wget https://releases.hashicorp.com/terraform/0.11.11/terraform_0.11.11_linux_amd64.zip && \
    unzip terraform_0.11.11_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    apt-get remove --purge -y unzip wget
