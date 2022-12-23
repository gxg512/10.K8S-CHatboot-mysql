kubectl get rs -o wide
kubectl rollout history deployment web-deployment
kubectl rollout history deployment web-deployment --revision 1 #2 sau 3
kubectl rollout undo deployment web-deployment --to-revision=1
kubectl rollout undo deployment web-deployment

kubectl set image deployment web-deployment website-container=nginx 

kubectl set image deployment web-deployment website-container=nginx --record
and check kubectl rollout history deployment web-deployment 

You should see more details
deployment.apps/web-deployment 
REVISION  CHANGE-CAUSE
2         <none>
3         <none>
4         <none>
5         kubectl set image deployment web-deployment website-container=nginx --record=true
