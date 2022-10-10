#!/usr/bin/env bash
# Filename: deploy.sh
docker build -t rajeshthangaraj1/portfolio .
docker run -p 3000:3000 -d rajeshthangaraj1/portfolio
