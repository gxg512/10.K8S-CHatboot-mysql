Este posibil ca la in moment dat acest container sa nu mai fie pe repository-ul de dockerhub. De aceea daca doriti sa replicati acest tutorial, folositi orice alt container cu o interfata web pe care sa il uploadati initial pe repo-ul vostru privat de dockerhub. Daca folositi varianta free de dockerhub, veti putea avea maxim 1 imagine privata, in rest toate celelalte vor fi publice.

1. Prima data incercam sa rulam un pod, dar nu e minikube-ul pornit ( verificam cu minikube status,ps -ef, netstat )
2. de modificat ceva pe kubeconfig, chiar daca e pornit nu vom putea de kubectl get pods
3. Configuratia pe pod va folosi un api gresit
4. Pods stops because command is sleep 30
5. Imagepull back up deoarece este o imagine privata de docker
6. Serviciul nu trimite trafic catre pod pentru ca nu sunt aceleasi label-uri

a) docker run --name some-wordpress -p 8080:80 -d wordpress -> for testing purposes
b) docker push gxg513/wordpress and make it private

1) minikube start
2) cat ~/.kube/config
apiVersion: v1
clusters:
- cluster:
    certificate-authority: /home/demo/.minikube/ca.cr -> IN LODE DE .CRT

eroare: error: unable to read certificate-authority /home/demo/.minikube/ca.cr for DEV-CLUSTER due to open /home/demo/.minikube/ca.cr: no such file or directory

3)
aici prima data la kind punem pod cu P mic in loc de P mare

la pod punem  apps/v1 in loc de v1

error: resource mapping not found for name: "wordpress-pod" namespace: "" from "pod.yaml": no matches for kind "Pod" in version "apps/v1"
ensure CRDs are installed first

4) avem comanda de sleep 14 ce nu ne lasa

5) Adaugam setarea ca sa traga din imaginea privata, cream secret pt asta

6) 
