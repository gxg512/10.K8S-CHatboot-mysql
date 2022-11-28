 minikube start --cpus 4 --memory 8192

minikube start --nodes 2 -p hello-minikube --extra-config=kubelet.housekeeping-interval=10s

minikube start  --cpus 4 --memory 8192 --extra-config=kubelet.housekeeping-interval=10s
#--extra-config=kubelet.housekeeping-interval=10s -> daca vrem metrics servers