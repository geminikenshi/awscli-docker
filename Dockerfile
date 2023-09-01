FROM amazonlinux:2023

RUN yum install -y aws-cli docker

CMD ["dockerd"]