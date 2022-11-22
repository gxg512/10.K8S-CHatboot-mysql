https://blog.marcnuri.com/prometheus-grafana-setup-minikube

helm cheat sheet https://www.tutorialworks.com/helm-cheatsheet/
#### prometheus ####

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts

helm repo list 

helm install prometheus prometheus-community/prometheus

kubectl expose service prometheus-server --type=NodePort --target-port=9090 --name=prometheus-server-np

### grafana ####

kubectl expose service mygrafana --type=NodePort --target-port=3000 --name=mygrafana-up

In grafana you can connect source via dns:
ON the grafana pod:
10.106.60.147 is the service ip (prometheus-server)
nslookup 10.106.60.147 -> 147.60.106.10.in-addr.arpa	name = prometheus-server.default.svc.cluster.local

Use this in prometheus ->
http://prometheus-server.default.svc.cluster.local:80