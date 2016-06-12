#!/usr/bin/env bash

# Build an image using the Dockerfile ready to push to the Docker Hub repo.
docker build -t pads/rails-docker-wmrug:latest .
