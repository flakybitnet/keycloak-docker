#!/bin/sh
set -eu

. .cicd/env

echo Obtaining AWS Public ECR credentials

PASSWORD=$(aws ecr-public get-login-password --region us-east-1)
echo -n "$PASSWORD" > "$AWS_PWD_FILE"

echo Done
