#!/bin/bash

# Create cluster
sudo k3d cluster create iot -p 8080:80@loadbalancer -p 8443:443@loadbalancer
sleep 5

# Install Argo CD
sudo kubectl create namespace argocd
sudo kubectl apply -f ../confs/install.yaml -n argocd
sudo kubectl wait --for=condition=Ready --timeout=300s -n argocd --all pod

# Create Argo project
sudo kubectl create namespace dev
sudo kubectl apply -f ../confs/project.yaml -n argocd
