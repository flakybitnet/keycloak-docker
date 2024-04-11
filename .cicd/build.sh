#!/bin/sh
set -eu

. .cicd/env

IMAGE="$HARBOR_PROJECT/$HARBOR_REPOSITORY:$APP_VERSION"
DOCKERFILE='./standalone-postgres.dockerfile'

echo Building $IMAGE image

executor --context ./ \
    --dockerfile "$DOCKERFILE" \
    --build-arg VERSION=$APP_VERSION \
    --destination "$HARBOR_REGISTRY/$IMAGE"

echo Done
