#!/bin/bash
set -e

IMAGE_NAME=vladimir-com-landing-page
CONTAINER_NAME=vladimir-com-landing-page-container
PORT=8080
URL=http://localhost:$PORT

echo "🔧 Building Docker image..."
docker build -t $IMAGE_NAME .

# Remove existing container if needed
if [ "$(docker ps -aq -f name=$CONTAINER_NAME)" ]; then
  echo "🧹 Removing existing container..."
  docker rm -f $CONTAINER_NAME > /dev/null
fi

echo "🚀 Running container at $URL..."
docker run -d --name $CONTAINER_NAME -p $PORT:80 $IMAGE_NAME

sleep 2

# Open in browser
case "$OSTYPE" in
  darwin*)  open $URL ;;
  linux*)   xdg-open $URL ;;
  msys*|cygwin*) start $URL ;;
  *)        echo "🔗 Open $URL manually" ;;
esac

echo "📝 Showing logs. Press Ctrl+C to stop preview..."

# Trap Ctrl+C to stop the container
trap "echo '🛑 Stopping container...'; docker stop $CONTAINER_NAME > /dev/null" INT

# Follow logs
docker logs -f $CONTAINER_NAME
echo "🛑 Stopping container..."