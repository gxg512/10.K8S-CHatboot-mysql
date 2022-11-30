kubectl config view
kubectl config get-contexts 

#CREAM O NOUA CONFIGURATIE#
kubectl config set-context kubesys --namespace=kube-system --user=minikube --cluster=minikube
kubectl config get-contexts -> acum avem si alt context
kubectl config current-context -> ne arata in ce context suntem
kubectl config use-context kubesys -> schimbam contextul
