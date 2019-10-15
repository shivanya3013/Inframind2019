docker rm -f jenkins
docker run -itd -e JENKINS_USER=$(id -u) -v /var/run/docker.sock:/var/run/docker.sock -v ~/jenkins_home:/var/jenkins_home -v $(which docker):/usr/bin/docker -p 4000:8080 -p 50000:50000  -u root --name=jenkins gary29198/jenkins-server:latest