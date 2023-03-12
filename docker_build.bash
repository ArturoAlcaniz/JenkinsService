DOCKER_BUILDKIT=1 docker build --no-cache --secret id=env,src=.env -t arturoalcaniz/jenkins-service:latest -f Dockerfile ..
if [ "$1" ]
  then
    printf $1 | docker login --username arturoalcaniz --password-stdin
fi
docker push arturoalcaniz/jenkins-service:latest
