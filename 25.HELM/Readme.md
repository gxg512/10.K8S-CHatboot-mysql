First write helm in your terminal after instalation and see all the arguments which you could use

Aici gasim repo-uri de helm: https://artifacthub.io/

Pentru a cauta pe repo-ul oficial de helm un anumit chart: helm search hub nginx
Pentru a cauta o versiune specifica: helm search repo nginx --version ^13
helm repo add chart_custom_name chart_link -> adaugi un nou repo
helm repo list -> listezi chart-urile

helm search repo stable -> pt a cauta un anumite repo. De ex pe artifacthub vor fi mai multe repo-uri in care sa cautam printre care si stable
helm search repo stable/mysql -> cautam un anumite chart in stable

Pentru linux dupa ce descarci repo-ul, daca vrei sa-l vezi verifica aici: $HOME/.cache/helm   

helm repo update
helm install stable/mysql --generate-name -> install repo and generate name
helm install myscutomanme stable/mysql -> install repo and give a custom name

helm ls -> view live releases installed
helm uninstall name_of_installed_repo

####### create helm chart #######

helm create mychart

##### DRY RUN #####

helm install --debug --dry-run mytest ./PATCHTOCHART

###### HELM UPGRADE ######

helm upgrade myconfig-v1 ./HELM-CONFIGMAP-v3/

##### USE SET TO PUT CUSTOM VALUES #####

helm install --dry-run --debug --set costcode=3 test ./HELM-CONFIGMAP-v2/


CUPRINS:
1) HELM-CONFIGMAP-v1 BASIC HELM
2) HELM-CONFIGMAP-v2 with variables
3) HELM-CONFIGMAP-v3 with helm buildin variables
4) HELM-CONFIGMAP-v4 with template functions variables
5) HELM-CONFIGMAP-v5 with pipeline and default values
6) HELM-CONFIGMAP-v6 with if/else
7) HELM-CONFIGMAP-v7 with with .Values.tags 
8) HELM-CONFIGMAP-v8 with range loops
9) HELM-CONFIGMAP-v9 with variables . 
Variables are assigned with a special assigment operator :=