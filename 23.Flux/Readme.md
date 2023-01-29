flux bootstrap github \
  --owner=gxg512 \
  --repository=flux \
  --branch=main \
  --path=./clusters/my-cluster

https://github.com/gxg512/flux
https://www.youtube.com/watch?v=1X3JgCnRNsw&ab_channel=Kubesimplify

####

v2:

export GITHUB_USER=youruser
export GITHUB_TOKEN=mytoken

Verificam daca clusterul de k8s e potrivit pt flux
flux check --pre

flux bootstrap command: creaza un repo si in acel repo sunt manifestele k8s ce vor fi instalate in flux-system namespace in clusterul tau si apoi orice modificare va fi in cluster se va reversa asupra clusterului tau

