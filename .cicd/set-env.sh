#!/bin/sh
set -eu

echo Setting up environment

APP_NAME='keycloak'
printf 'APP_NAME=%s\n' "$APP_NAME" >> .cicd/env

APP_PROFILE='standalone-postgres'
printf 'APP_PROFILE=%s\n' "$APP_PROFILE" >> .cicd/env

# from WP config
printf 'APP_VERSION=%s\n' "$APP_VERSION" >> .cicd/env

printf 'HARBOR_REGISTRY=%s\n' 'harbor.flakybit.net' >> .cicd/env
printf 'HARBOR_PROJECT=%s\n' "$APP_NAME" >> .cicd/env
printf 'HARBOR_REPOSITORY=%s\n' "$APP_PROFILE" >> .cicd/env

cat .cicd/env

echo Done