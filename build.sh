#!/usr/bin/env bash
set -e

# variables
REGISTRY=""
BASE_PATH=""
TAG=""

# list of service directories
SERVICES=(
)

for SERVICE in "${SERVICES[@]}"; do
  IMAGE="${REGISTRY}/${BASE_PATH}/${SERVICE}:${TAG}"
  echo ">>> Building $IMAGE from $SERVICE"
  docker build -t "$IMAGE" "./$SERVICE"
  echo ">>> Pushing $IMAGE"
  docker push "$IMAGE"
done

# build
docker build -t "$IMAGE" .
