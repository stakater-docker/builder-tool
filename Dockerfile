FROM stakater/gitlab:0.0.4-terraform-0-12-7
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt install -y build-essential && \
    apt-get install -y unzip && \
    apt-get install -y wget && \
    apt-get install -y git && \
    apt-get install -y curl && \
    wget https://releases.hashicorp.com/terraform/0.12.7/terraform_0.12.7_linux_amd64.zip && \
    unzip terraform_0.12.7_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator &&  \
    chmod +x ./aws-iam-authenticator && \
    mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH && \
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc && \
    apt-get remove --purge -y unzip wget curl
