#!/bin/bash
set -x

echo "Stop docker containers"
docker compose -f docker/docker-compose.yml down

echo "Remove all stopped docker containers"
docker container prune -f

echo "Remove all unused docker volumes"
docker volume prune -f

echo "Remove all unused docker network"
docker network prune -f
