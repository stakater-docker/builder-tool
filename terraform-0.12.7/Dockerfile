FROM stakater/gitlab:0.0.4-terraform-0-12-7
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt install -y build-essential && \
    apt-get install -y unzip && \
    apt-get install -y wget && \
    apt-get install -y git && \
    apt-get install -y curl && \    
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator &&  \
    chmod +x ./aws-iam-authenticator && \
    mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH && \
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc && \
    apt-get install -y apt-transport-https ca-certificates && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash -&& \
    apt-get install -y nodejs && \
    apt update && \
    apt install -y yarn && \
    apt-get remove --purge -y unzip wget
