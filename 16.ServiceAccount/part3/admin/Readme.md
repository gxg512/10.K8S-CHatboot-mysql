La nivel de pod avem in token
acesta se gaseste in /run/secrets/kubernetes.io/serviceaccount si poate fi decodat cu https://jwt.io/

you can check access with that token.
1. Copy token
2. cat ~/.kube/config and get the server hostname -> ex server: https://192.168.49.2:8443
3. 
curl -k https://192.168.49.2:8443/api/v1 -> will not work
4. 
curl -k https://192.168.49.2:8443/api/v1 --header "Authorization: Bearer yourtoken"
