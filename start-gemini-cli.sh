#!/bin/bash

# Determine the current project directory name and export it.
# This variable is used in docker-compose.yml to set up volumes and working directory.
PROJECT_DIR_NAME=$(basename "$(pwd)")
export PROJECT_DIR_NAME

# Set HOST_UID and HOST_GID for Docker build arguments
HOST_UID=$(id -u)
HOST_GID=$(id -g)

# Build the container with explicit build arguments
docker compose build --build-arg HOST_UID="${HOST_UID}" --build-arg HOST_GID="${HOST_GID}"

# Run the container in detached mode
docker compose up -d

echo "Waiting for container 'gemini-cli' to be ready..."

# Wait for the container to be running
CONTAINER_NAME="gemini-cli"
MAX_ATTEMPTS=30 # Max 30 attempts, 1 second each = 30 seconds timeout
ATTEMPT=0

while [ $ATTEMPT -lt $MAX_ATTEMPTS ]; do
  # Get the container ID for the service
  CONTAINER_ID=$(docker compose ps -q $CONTAINER_NAME)

  if [ -n "$CONTAINER_ID" ]; then
    # Check if the container is running
    IS_RUNNING=$(docker inspect -f '{{.State.Running}}' "$CONTAINER_ID" 2> /dev/null)
    if [ "$IS_RUNNING" = "true" ]; then
      echo "Container '$CONTAINER_NAME' is running."
      break
    fi
  fi

  echo "Still waiting for container '$CONTAINER_NAME' to start... (Attempt $((ATTEMPT + 1))/$MAX_ATTEMPTS)"
  sleep 1
  ATTEMPT=$((ATTEMPT + 1))
done

if [ $ATTEMPT -eq $MAX_ATTEMPTS ]; then
  echo "Error: Container '$CONTAINER_NAME' did not start in time."
  exit 1
fi

echo "
Starting gemini-cli inside the container..."
docker compose exec gemini-cli bash -l -c "gcloud auth application-default login"
docker compose exec gemini-cli bash -l -c "gemini"

echo "
To stop the container, use:"
docker compose down
