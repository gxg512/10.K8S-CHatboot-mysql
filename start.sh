minikube start \
--profile=DEV-CLUSTER
minikube start --cpus 4 --memory 8192 
#minikube start --cpus 4 --memory 8192 --extra-config=kubelet.housekeeping-interval=10s
