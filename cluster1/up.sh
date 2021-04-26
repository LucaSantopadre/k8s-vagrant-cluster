#!/usr/bin/env bash
vagrant up --provider virtualbox

echo '######################## WAITING TILL ALL NODES ARE READY ########################'
sleep 60

echo '######################## INITIALISING K8S RESOURCES ########################'
chmod 400 certs/id_rsa

echo '### kube-config setting for vagrant user...'
vagrant ssh cluster1-master1 -c "mkdir -p .kube ; sudo cp /root/.kube/config ./.kube/config ; sudo chown vagrant:vagrant .kube/config"

echo '### apply nginx ingress-controller'
vagrant ssh cluster1-master1 -c "sudo su - root -c 'kubectl apply -f https://kubernetes.github.io/ingress-nginx/deploy/#bare-metal'"

echo '### KUSTOMIZE...'
vagrant ssh cluster1-master1 -c "sudo su - root -c 'kubectl apply -k /vagrant/k8s/resources'"


sleep 20

echo '######################## ALL DONE ########################'
