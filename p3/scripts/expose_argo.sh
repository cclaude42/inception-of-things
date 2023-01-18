#!/bin/bash

# Get Argo CD password
echo "Argo CD credentials :"
echo "admin"
sudo kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" 2> /dev/null | base64 -d
echo
echo

# Access Argo CD
sudo kubectl port-forward service/argocd-server -n argocd 8060:443 --address 0.0.0.0
