FROM debian:9
MAINTAINER Irtiza Ali (irtiza@aurorasolutions.io)

RUN apt-get update && \
    apt-get install -y build-essential unzip wget git curl make jq

# Install Terraform
ARG TERRAFORM_VERSION=0.11.11
ARG HELM_FILENAME=terraform_${TERRAFORM_VERSION}_linux_amd64.zip
ARG TERRAFORM_URL=https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/${HELM_FILENAME}
RUN curl -LO ${TERRAFORM_URL} \
    && unzip ${HELM_FILENAME} -d /tmp \
    && cp /tmp/terraform /bin/terraform \
    && rm -rf /tmp/*

# Install kubectl
ARG KUBECTL_VERSION=1.17.2
RUN curl -LO --show-error https://storage.googleapis.com/kubernetes-release/release/v${KUBECTL_VERSION}/bin/linux/amd64/kubectl && \
    mv kubectl /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl

# Install helm
ARG HELM_VERSION=v2.16.3
ARG HELM_FILENAME=helm-${HELM_VERSION}-linux-amd64.tar.gz
ARG HELM_URL=https://get.helm.sh/${HELM_FILENAME}
RUN curl -L ${HELM_URL} | tar zxv -C /tmp \
    && cp /tmp/linux-amd64/helm /bin/helm \
    && rm -rf /tmp/*

RUN curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.14.6/2019-08-22/bin/linux/amd64/aws-iam-authenticator &&  \
    chmod +x ./aws-iam-authenticator && \
    mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH && \
    echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc

RUN curl -o kubeseal -L https://github.com/bitnami-labs/sealed-secrets/releases/download/v0.9.6/kubeseal-linux-amd64 && \
    install -m 755 kubeseal /usr/local/bin/kubeseal

RUN apt-get install -y apt-transport-https ca-certificates && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash -&& \
    apt update && \
    apt-get install -y yarn nodejs

RUN wget https://github.com/kward/shunit2/archive/v2.1.7.tar.gz && \
    tar xvzf v2.1.7.tar.gz && mkdir -p /usr/share/shunit2/ && \
    cp shunit2-2.1.7/shunit2 /usr/share/shunit2/shunit2 && \
    echo 'export PATH=/usr/share/shunit2:$PATH' >> ~/.bashrc && \
    curl -sL https://aka.ms/InstallAzureCLIDeb | bash