#!/usr/bin/env bash

# Download dulu yang dibutuhkan
./download.sh

# Bersihkan dan hapus
docker-compose down
docker-compose -f docker-compose-elk.yml down

# Update password
echo "password" > ./secrets/artifactoryPassword

# Update image jenkins yang lama, pastikan tidak menggunakan cache
docker-compose build --no-cache

# Jalankan stack
docker-compose up &

# Jalankan elk stack
docker-compose -f docker-compose-elk.yml up
