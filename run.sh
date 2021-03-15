#!/usr/bin/env sh
echo "Running TNT assignment"
./mvnw clean install
docker build -t tntAggregator
docker run -p 8080:8080 -d tntAggregator
docker run -p 9090:8080 -d xyzassessment/backend-services

