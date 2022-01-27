#!/bin/bash
echo 'Push dockei images to ECR'
APP_NAME='530117518858.dkr.ecr.eu-central-1.amazonaws.com/envi_python_app'
APP_VERSION='0.1'
APP_IMAGES=$APP_NAME:$APP_VERSION

aws ecr get-login-password --region eu-central-1 | docker login --username AWS --password-stdin 530117518858.dkr.ecr.eu-central-1.amazonaws.com
docker build -t $APP_NAME:$APP_VERSION .
docker push $APP_IMAGES

# echo $APP_IMAGES