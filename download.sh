#!/usr/bin/env bash

# Bersihkan dan hapus dulu Jenkins
docker-compose down

docker pull jenkins/jenkins:latest
