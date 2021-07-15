#!/usr/bin/env bash

# Bersihkan dan hapus semuanya
docker-compose down
docker-compose -f docker-compose-elk.yml down
