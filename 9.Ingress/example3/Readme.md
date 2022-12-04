https://snyk.io/blog/setting-up-ssl-tls-for-kubernetes-ingress/

mkdir certs

openssl req -x509 -nodes -days 9999 -newkey rsa:2048 -keyout certs/ingress-tls.key -out certs/ingress-tls.crt

kubectl create secret tls ingress-cert --namespace dev --key=certs/ingress-tls.key --cert=certs/ingress-tls.crt -o yaml
