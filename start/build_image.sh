#!/bin/bash

mvn package
docker build -t rlzh/openliberty-getting-started:$1 .
docker push rlzh/openliberty-getting-started:$1
