# Kubernetes cluster using vagrant

## prerequisites
 - [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 - [Vagrant](https://www.vagrantup.com/downloads)


## setup and run

You will start a three node cluster, one master and two worker. 

 - cluster1-master1
 - cluster1-worker1
 - cluster1-worker2


```
git clone https://github.com/LucaSantopadre/k8s-vagrant-cluster.git
cd k8s-vagrant-cluster/cluster1
./up.sh

vagrant ssh cluster1-master1
vagrant@cluster1-master1:~$ kubectl get node
```
**Done!**

If you want to **destroy** the environment again run `./down.sh`. You should destroy the environment after usage so no more resources are used!

## Kustomize
You can find a simple [kustomization](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/) under `cluster1/k8s/resources`, that can be easily configured to deploy a ready kubernetes environment.

eg.
```
k8s/resources/
├── kustomization.yaml
└── namespaces
    ├── dev
    │   └── deploy.yaml
    └── namespaces.yaml
```

### Hint

Use command `vagrant suspend` to freeze the vms, and `vagrant resume` to resume the vms and get the cluster ready.

You should be connected as `root@cluster1-master1`. You can connect to other worker nodes using root, like ssh `root@cluster1-worker1`

```
vagrant ssh cluster1-worker1
vagrant@cluster1-worker1:~$ sudo -i
root@cluster1-worker1:~# kubectl get node
```