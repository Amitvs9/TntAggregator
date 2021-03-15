#!/usr/bin/env sh
docker rm $(docker stop $(docker ps -a -q --filter ancestor=tntAggregator --format="{{.ID}}"))
docker rm $(docker stop $(docker ps -a -q --filter ancestor=xyzassessment/backend-services --format="{{.ID}}"))