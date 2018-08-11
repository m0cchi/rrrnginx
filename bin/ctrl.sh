#!/bin/bash

L="$(cd $(dirname $0); pwd)"
BASE_COMPOSE_FILE="$L/../docker-compose.yaml"

if [ "$1" == 'ssl' ]; then
  BASE_COMPOSE_FILE="$L/../docker-compose_ssl.yaml"
  shift
fi

COMPOSE_FILE="$L/../._docker-compose.yaml"

ruby "$L/merge.rb" "$COMPOSE_FILE" "$BASE_COMPOSE_FILE" "$L/../parts/"

if [ -e "$L/../.env" ]; then
    source "$L/../.env"
fi

export COMPOSE_FILE
docker-compose $*
