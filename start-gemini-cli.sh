#!/bin/bash

# Build and run the container in detached mode
_project_dir_name_temp=$(basename "$(pwd)")
export PROJECT_DIR_NAME="${_project_dir_name_temp}"
docker compose up --build -d

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
Running gemini-cli with a single prompt to generate authentication credentials..."
gemini -p /quit

echo "
Starting gemini-cli inside the container..."
docker compose exec gemini-cli bash -c "gemini --model=gemini-2.5-flash"

echo "
Container 'gemini-cli' is running in the background."
echo "To enter the container and run gemini-cli, use:"
echo "docker compose exec gemini-cli gemini"
echo "
To stop the container, use:"
docker compose down
