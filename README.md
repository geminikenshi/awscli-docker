# awscli_docker

## Upload to docker hub

You might need to perform docker login

```bash
docker build -t <image> .

docker push <image>:<tag>

```

## Use gitlab-runner for docker in docker

Need to bind the volumn of docker on the machine running gitlab-runner to the into the gitlab-runner container

```bash
docker exec -it gitlab-runner \
gitlab-runner register \
--docker-privileged \
--docker-volumes /var/run/docker.sock:/var/run/docker.sock

docker restart gitlab-runner

```
