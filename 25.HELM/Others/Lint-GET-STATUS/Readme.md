Dupa ce se face install ul de helm tre sa verificam daca este totul ok
helm lint UPGRADE-HELM/myapp-with-job-hook/

########################################

helm get grafana
helm get values grafana
helm get manifest grafana  # --revision x
helm get all grafana