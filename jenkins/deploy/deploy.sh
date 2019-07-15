#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i ../centos7/remote-key /tmp/.auth jenkins@10.0.0.56:/tmp/.auth

scp -i ../centos7/remote-key jenkins/deploy/publish.sh jenkins@10.0.0.56:/tmp/publish

ssh -i ../centos7/remote-key jenkins@10.0.0.56 "chmod +x /tmp/publish"

ssh -i ../centos7/remote-key jenkins@10.0.0.56 "/tmp/publish"
