docker volume create jenkins-volume
docker run -d -p 8080:8080 -p 50000:50000 -v jenkins-volume:/var/jenkins_home jenkins/jenkins:lts-jdk11

https://www.youtube.com/watch?v=ZXaorni-icg&ab_channel=CloudBeesTVhttps://www.youtube.com/watch?v=ZXaorni-icg&ab_channel=CloudBeesTV


docker run -d --network host -v jenkins-volume:/var/jenkins_home jenkins/jenkins:lts-jdk11 -> pt ca din acest container nu avem access la ip-ul de minikube facem un container cu host networking
