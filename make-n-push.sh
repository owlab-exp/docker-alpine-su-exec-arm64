#!/bin/sh
NAME=owlab/alpine-su-exec-arm64
TAG=edge-0.2
docker build -t ${NAME}:${TAG} . && docker tag ${NAME}:${TAG} ${NAME}:latest
