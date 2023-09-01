FROM amazonlinux:2023

RUN sudo yum install -y aws-cli docker

CMD ["dockerd"]