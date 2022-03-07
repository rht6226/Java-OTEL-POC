#!/bin/bash

mvn package
docker build -t otel-petclinic:latest .
docker-compose up