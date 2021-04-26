## CKA resources
*  [LF important instructions](https://docs.linuxfoundation.org/tc-docs/certification/tips-cka-and-ckad)
*  [Curriculum](https://github.com/cncf/curriculum)
*  [Exam UI](https://docs.linuxfoundation.org/tc-docs/certification/lf-candidate-handbook/exam-user-interface)

## Resources allowed during exams

* https://kubernetes.io/docs/
* https://github.com/kubernetes/
* https://kubernetes.io/blog/ 

Link for each voice in curriculum(CKA 1.20)
###  Cluster Architecture, Installation, and Configuration 25%
1. [Manage role based access control](https://kubernetes.io/docs/reference/access-authn-authz/rbac/)
1. [Use kubeadm to install a basic cluster](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/)
1. [Manage a highly available Kubernetes cluster](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/high-availability/)
1. [Provision underlying infrastructure to deploy Kubernetes cluster](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/install-kubeadm/)
1. [Peform a version upgrade on Kubernetes cluster using kubeadm](https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-upgrade/)
1. [implment etcd backup and restore](https://kubernetes.io/docs/tasks/administer-cluster/configure-upgrade-etcd/#backing-up-an-etcd-cluster)


### Workloads & Scheduling – 15%
1. [Understand deployments and how to perform rolling update and rollbacks](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
2. Use [ConfigMaps](https://kubernetes.io/docs/concepts/configuration/configmap/) and [Secrets](https://kubernetes.io/docs/concepts/configuration/secret/) to configure applications
  - [configure a pod with a configmap](https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/)
  - [configure a pod with a secret](https://kubernetes.io/docs/tasks/inject-data-application/distribute-credentials-secure/)
3. Know how to [scale applications](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#scaling-a-deployment)
  - [scaling a statefulset](https://kubernetes.io/docs/tasks/run-application/scale-stateful-set/)
  - [scaling a replicaset](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/#scaling-a-replicaset)
4. Understand the primitives used to create robust, self-healing, application deployments
 - [Replicaset](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/)
 - [Deployments](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/)
 - [Statefulsets](https://kubernetes.io/docs/concepts/workloads/controllers/statefulset/)
 - [Daemonset](https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/)
5. Understand [how resource limits can affect Pod scheduling](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#how-pods-with-resource-requests-are-scheduled)
6. Awareness of manifest management and common templating tools
  * [Kustomize](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/kustomization/)
    - [Kustomize Blog](https://kubernetes.io/blog/2018/05/29/introducing-kustomize-template-free-configuration-customization-for-kubernetes/)
  * [manage kubernetes objects](https://kubernetes.io/docs/tasks/manage-kubernetes-objects/)
  * [Install service catalog using helm](https://kubernetes.io/docs/tasks/service-catalog/install-service-catalog-using-helm/)


### Services & Networking – 20% 
1. Understand [host networking configuration on the cluster nodes](https://kubernetes.io/docs/concepts/cluster-administration/networking/)
2. Understand connectivity between Pods
  - [The concept of Pods networking](https://kubernetes.io/docs/concepts/workloads/pods/#pod-networking)
3. Understand ClusterIP, NodePort, LoadBalancer service types and endpoints
   - [service](https://kubernetes.io/docs/concepts/services-networking/service/)
4. Know how to use [Ingress controllers](https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/) and [Ingress resources](https://kubernetes.io/docs/concepts/services-networking/ingress/#the-ingress-resource)
  - [Ingress concepts]((https://kubernetes.io/docs/concepts/services-networking/ingress/))
5. [Know how to configure and use CoreDNS](https://kubernetes.io/docs/tasks/administer-cluster/dns-custom-nameservers/)
6. [Choose an appropriate container network interface plugin](https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/#pod-network)


### Storage – 10%
1. Understand [storage classes](https://kubernetes.io/docs/concepts/storage/storage-classes/), [persistent volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)
1. Understand [volume mode](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#volume-mode), [access modes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#access-modes) and [reclaim policies](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#reclaim-policy) for volumes
1. Understand [persistent volume claims](https://kubernetes.io/docs/concepts/storage/persistent-volumes/#persistentvolumeclaims) primitive
1. Know how to [configure applications with persistent storage](https://kubernetes.io/docs/tasks/configure-pod-container/configure-volume-storage/)


### Troubleshooting – 30%
1. [Evaluate cluster and node logging](https://kubernetes.io/docs/concepts/cluster-administration/logging/)
1. [Understand how to monitor applications](https://kubernetes.io/docs/tasks/debug-application-cluster/resource-usage-monitoring/)
1. [Manage container stdout & stderr logs](https://kubernetes.io/docs/concepts/cluster-administration/logging/#logging-at-the-node-level)
1. [Troubleshoot application failure](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-application/)
   - [Pending or termintated pods](https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/#troubleshooting)
1. [Troubleshoot cluster component failure](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-cluster/)
1. [Troubleshoot networking](https://kubernetes.io/docs/tasks/debug-application-cluster/debug-cluster/)
   - [DNS troubleshooting](https://kubernetes.io/docs/tasks/administer-cluster/dns-debugging-resolution/)


## Tips:

Get familiar with:
* Familiarize yourself with the documentation, initially [concepts](https://kubernetes.io/docs/concepts/)  and mostly [tasks](https://kubernetes.io/docs/tasks/), **kubectl explain** command, [kubectl cheatsheet](https://kubernetes.io/docs/user-guide/kubectl-cheatsheet/), and [kubectl commands reference](https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands)
  - https://kubernetes.io/docs/concepts/ 
  - https://kubernetes.io/docs/tasks/ 
  - https://kubernetes.io/docs/user-guide/kubectl-cheatsheet/
  - https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands
*  `kubectl api-versions` and `kubectl  api-resources` wih `grep` for a specific resoruce e.g. pv, pvc, deployment, storageclass, ..etc can help figure out the **apiVersion**, and **kind** combined with explain below will help in constructing the yaml manifest
* [kubectl explain --recurisve](https://blog.heptio.com/kubectl-explain-heptioprotip-ee883992a243) to construct out any yaml manifest you need and find its specd and details
* Enable [kubectl autocomplete](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#bash). Autocomplete is the life saviour in any timebound exam as well as our day to day work (e.g. If autocomplete enabled `k -n [Press Tab]` will suggest available namespaces). Example command to enable autocomplete is available at official [kubectl Cheat Sheet](https://kubernetes.io/docs/reference/kubectl/cheatsheet/#bash) page, you don't have to remember anything. 
```
source <(kubectl completion bash) # setup autocomplete in bash into the current shell, bash-completion package should be installed first.
echo "source <(kubectl completion bash)" >> ~/.bashrc # add autocomplete permanently to your bash shell.

alias k=kubectl
complete -F __start_kubectl k
```
