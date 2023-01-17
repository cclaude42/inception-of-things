#!/bin/bash

# Requirements
sudo apt install -y curl

# Install Virtualbox
wget -P /tmp https://download.virtualbox.org/virtualbox/7.0.4/virtualbox-7.0_7.0.4-154605~Debian~bullseye_amd64.deb
sudo apt install -y /tmp/virtualbox-7.0_7.0.4-154605~Debian~bullseye_amd64.deb

# Install Vagrant
wget -O - https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt update && sudo apt install -y vagrant=2.3.4

# Install Docker
curl -sSL https://get.docker.com/ | VERSION=20.10.22 sh

# Install kubectl
curl -LO "https://dl.k8s.io/v1.26.0/bin/linux/amd64/kubectl"
sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
rm kubectl

# Install k3d
wget -q -O - https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | TAG=v5.4.6 bash
