kubectl get secret kubernetes-dashboard-secret  -o yaml

Copiezi token-ul si il decodezi. Acel token va fi folosit pt autentificare


ubectl port-forward kubernetes-dashboard-66c887f759-mglzb 8444:8443

https://127.0.0.1:8444/#/pod?namespace=default

Ca sa avem autentificare, la args tre sa avem doar asta:
( si sa comentam  --enable-skip-login)

 - args:
    - --auto-generate-certificates
    - --namespace=kubernetes-dashboard

