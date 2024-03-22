#!/bin/bash

if [ "$1" != "start" ] && [ "$1" != "stop" ] && [ "$1" != "purge" ]; then
    echo "Invalid argument."
    echo "./cli.sh [start|stop|purge] [master|shard]"
    exit 1
fi

if [ "$2" != "master" ] && [ "$2" != "shard" ]; then
    echo "Invalid argument."
    echo "./cli.sh [start|stop|purge] [master|shard]"
    exit 1
fi

if [ "$1" == "start" ]; then
    docker compose -f "docker-compose.$2.yml" up -d
fi

if [ "$1" == "stop" ]; then
    docker compose -f "docker-compose.$2.yml" down
fi

if [ "$1" == "purge" ]; then
    docker compose -f "docker-compose.$2.yml" down -v --rmi all --remove-orphans
fi