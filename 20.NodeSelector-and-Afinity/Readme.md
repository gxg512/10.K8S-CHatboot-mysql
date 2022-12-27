./start.sh

###NODESLECTOR####
kubectl get nodes -o wide

kubectl label node node1 class=first
kubectl label node node2 class=second
kubectl label node node3 class=second


kubectl label node minikube class=first
kubectl label node minikube-m02 class=second
kubectl label node minikube-m03 class=second

kubectl describe node node1 -> to check label
kubectl get pods -o wide

####AFFINITY#####
