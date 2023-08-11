#!/bin/sh

tag_version = "${env.BUILD_ID}"

sed -i 's/{{TAG}}/$tag_version/g' portal/k8s/deployment.yaml 
kubectl apply -f portal/k8s/deployment.yaml
