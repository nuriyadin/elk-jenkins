#!/usr/bin/env bash

# Bersihkan semuanya
docker-compose down
docker-compose -f docker-compose-elk.yml down

# Jalankan elk stack
docker-compose -f docker-compose-elk.yml up &

sleep 20

# Jalankan jenkins
docker-compose up &
