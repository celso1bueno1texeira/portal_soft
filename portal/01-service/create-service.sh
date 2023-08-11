#!/bin/sh

NAMESPACE=default
DEPLOYMENT=portal

if [ ! -z "$(kubectl get service --namespace=$NAMESPACE | grep $DEPLOYMENT)" ]
then
    echo = "o service já existe!!!"
    exit
else
    kubectl apply -f ./k8s/service.yaml
fi