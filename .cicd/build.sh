#!/bin/sh
set -eu

. .cicd/env

IMAGE="$HARBOR_PROJECT/$HARBOR_REPOSITORY:$APP_PROFILE-$APP_VERSION"
DOCKERFILE="./$APP_PROFILE.dockerfile"

echo Building $IMAGE image

executor --context ./ \
    --dockerfile "$DOCKERFILE" \
    --build-arg VERSION=$APP_VERSION \
    --destination "$HARBOR_REGISTRY/$IMAGE"

echo Done
