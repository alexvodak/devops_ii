run-jenkins:
	docker build -t local_jenkins .
	docker run --name jenkins -i -d -p 8787:8080 -p 50000:50000 -v /opt/docker/jenkins/jenkins_home:/var/jenkins_home:rw local_jenkins'