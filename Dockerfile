FROM amazonlinux:2023

RUN yum install -y aws-cli docker make gettext

RUN curl -LO https://dl.k8s.io/release/v1.27.0/bin/linux/amd64/kubectl

RUN install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl

RUN rm kubectl

RUN kubectl version --client --output=yaml

CMD ["dockerd"]