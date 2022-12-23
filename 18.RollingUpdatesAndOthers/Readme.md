kubectl get rs -o wide
kubectl rollout history deployment web-deployment
kubectl rollout history deployment web-deployment --revision 1 #2 sau 3
kubectl rollout undo deployment web-deployment --to-revision=1
