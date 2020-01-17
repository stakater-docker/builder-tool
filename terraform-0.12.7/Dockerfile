FROM stakater/gitlab:0.0.4-terraform-0-12-7
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt install -y build-essential unzip wget git curl jq && \  
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator &&  \
    chmod +x ./aws-iam-authenticator && \
    mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH && \
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc && \
    curl -o kubeseal -L https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.6/kubeseal-linux-amd64 && \
    install -m 755 kubeseal /usr/local/bin/kubeseal && \
    apt-get install -y apt-transport-https ca-certificates && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash -&& \
    apt-get install -y nodejs && \
    apt update && \
    apt install -y yarn && \
    wget https://github.com/kward/shunit2/archive/v2.1.7.tar.gz && \
    tar xvzf v2.1.7.tar.gz && mkdir -p /usr/share/shunit2/ && \
    cp shunit2-2.1.7/shunit2 /usr/share/shunit2/shunit2 && \
    echo 'export PATH=/usr/share/shunit2:$PATH' >> ~/.bashrc && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash