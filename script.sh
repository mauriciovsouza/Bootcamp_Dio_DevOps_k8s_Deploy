#!/bin/bash

echo "Criando imagens....."

docker build -t jmauriciovsouza/projeto-backend:1.0 backend/.
docker build -t jmauriciovsouza/projeto-database:1.0 database/.

echo "Realizando push das imagens..."

docker push jmauriciovsouza/projeto-backend:1.0
docker push jmauriciovsouza/projeto-database:1.0

echo "Criando serviços no cluster kubernetes..."

kubectl apply -f ./services.yml

echo "Criando os deployments..."

kubectl apply -f ./deployment.yml
