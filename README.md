# Kubernetes cluster using vagrant

## setup and run
You will start a two node cluster on your machine, one master and one worker. 

 - cluster1-master1
 - cluster1-worker1

For this you need to install VirtualBox and Vagrant, then:


```
git clone https://github.com/LucaSantopadre/k8s-vagrant-cluster.git
cd k8s-vagrant-cluster/cluster1
./up.sh

vagrant ssh cluster1-master1
vagrant@cluster1-master1:~$ sudo -i
root@cluster1-master1:~# kubectl get node
```

You should be connected as `root@cluster1-master1`. You can connect to other worker nodes using root, like ssh `root@cluster1-worker1`
If you want to destroy the environment again run `./down.sh`. You should destroy the environment after usage so no more resources are used!

Use command `vagrant suspend` to suspend the vms is useful to save resources, and `vagrant resume` to resume the vms and get the cluster ready.