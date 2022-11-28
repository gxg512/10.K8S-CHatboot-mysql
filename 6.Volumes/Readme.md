https://www.youtube.com/watch?v=U11YjaRvCd4

Ephemeral Volumes:
1. EmptyDir
2. secret
3. configmap
4. CSI ephemeral volumes
5. Generic ephemenral volumes
6. downwardAPI

1. Storage provided by kubelet base directory ( usually the root disk or RAM )

emptyDir: emptyDir volume’s lifetime is tied to that of the pod, the volume’s contents are lost when the pod is deleted.

Use cases: An emptyDir volume is especially useful for sharing files between containers running in the same pod. But it can also be used by a single container for when a container needs to write data to disk temporarily, such as when performing a sort operation on a large dataset.

2. 

3. Injects different kinds of k8s data and config to pod


Persistent Volumes:
nfs,azureDisk,EBS AWS

MIN 12
