#!/bin/bash

COMPOSE_FILE=docker-compose.yaml

if [ "$1" == 'ssl' ]; then
  COMPOSE_FILE=docker-compose_ssl.yaml
  shift
fi

export COMPOSE_FILE
docker-compose $*
