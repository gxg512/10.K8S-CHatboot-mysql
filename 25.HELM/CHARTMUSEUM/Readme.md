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

Daca vrem sa facem o alta versiune a acestui helm, modificam versiunea din Charts.yaml si 
apoi rulam iar helm package HELM-configmap-demo-4-chartmuseum/
curl --data-binary "@HELM-CONFIGMAP-0.2.0.tgz" http://localhost:8084/api/charts -> to upload

helm search repo chartmuseumrepo -> va arata tot versiunea 0.1.0 deoarece ia informatiile din cache. Pentru as face update: helm repo update
helm search repo -l chartmuseumrepo -> daca vrem sa afiseze toate versiunile 0.1.0 si 0.2.0

#################

GITHUB HOSTING FOR HELM

https://github.com/gxg512/helm-charts

helm create gitrepotest si apoi helm package gitrepotest
Si punem in repo-ul de git doar 2 fisiere:
gitrepotest-0.1.0.tgz  README.md ( al doilea e obtional )
helm repo index . -> se va genera un fisier de index. pt chartmuseum nu e o varianta pt ca isi genereaza singur

helm repo add mygithubrepo https://raw.githubusercontent.com/gxg512/helm-charts/main/ (daca folosesti token va trebui specificat ca argument,atat userul cat si token-ul. Eu folosesc ssh key si nu a trebuit sa specific)
helm search repo mygithubrepo 