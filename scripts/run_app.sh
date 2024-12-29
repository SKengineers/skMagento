#!/bin/bash

function start_app() {
    docker compose -p joomla-local --env-file docker/config/.env.local -f docker/docker-compose.local.yml up --no-deps --build -d
    echo "Waiting until application ready ..."
    sleep 120
    echo "Application is running at http://localhost:8080"
}

start_app