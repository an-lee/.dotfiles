#!/usr/bin/env bash

sudo -v

curl -LO "https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/darwin/amd64/kubectl"

chmod +x ./kubectl

mv ./kubectl /usr/local/bin/kubectl

kubectl version
