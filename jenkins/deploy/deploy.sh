#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prod /tmp/.auth jenkins@10.0.0.56:/tmp/.auth

scp -i /opt/prod jenkins/deploy/publish.sh jenkins@10.0.0.56:/tmp/publish

ssh -i /opt/prod jenkins@10.0.0.56 "chmod +x /tmp/publish"

ssh -i /opt/prod jenkins@10.0.0.56 "/tmp/publish"
