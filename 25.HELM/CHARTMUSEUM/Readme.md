De instalat chartmuseum pt linux
mkdir /home/demo/CHARTMUSEUM
chartmuseum --debug --port 8084 --storage="local" --storage-local-rootdir="/home/demo/CHARTMUSEUM"

GO TO http://localhost:8084/

helm repo add chartmuseumrepo http://localhost:8084
helm repo list
helm search repo chartmuseumrepo

helm package HELM-configmap-demo-4-chartmuseum/ -> to create the package before upload. HELM-CONFIGMAP-0.1.0.tgz will be created
curl --data-binary "@HELM-CONFIGMAP-0.1.0.tgz" http://localhost:8084/api/charts -> to upload
helm repo update -> to update chart info
helm search repo chartmuseumrepo -> now will work

NAME                            CHART VERSION   APP VERSION     DESCRIPTION                                
chartmuseumrepo/helm-configmap  0.1.0                           A Helm chart for Kubernetes for chartmuseum

######################