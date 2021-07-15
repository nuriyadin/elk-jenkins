#!/usr/bin/env bash

# Bersihkan
docker-compose down
docker-compose -f docker-compose-elk.yml down
