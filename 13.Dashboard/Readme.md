minikube addons list
minikube addons enable dashboard
minikube addons enable metrics-server and ingress

kubectl expose deploy  kubernetes-dashboard --type=NodePort --name=kubernetes-dashboard-np

test it: minikube_ip:31793
