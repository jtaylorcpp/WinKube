#!/bin/bash

echo "Starting CoreOS Single-Node Kubernetes:"

# the below instructions are for fixing windows vagrant issues

CLUSTER_IP="10.3.0.1"
NODE_IP="172.17.4.99"

echo "Generating SSL Keys"

mkdir -p ssl && ./../lib/init-ssl-ca ssl
./../lib/init-ssl ssl apiserver controller IP.1="${NODE_IP}",IP.2="${CLUSTER_IP}"
./../lib/init-ssl ssl admin kube-admin

echo "Configuring Vagrant VM Specific kubectl"
# pull down kubectl and configure to work in local single-node instance
cp ./../../kubectl.exe .

KUBECONFIG="./kubeconfig"

./kubectl.exe config use-context vagrant-single

echo "Vagrant Up"

vagrant.exe up

echo "Kubernetes Nodes:"

./kubectl.exe get nodes
