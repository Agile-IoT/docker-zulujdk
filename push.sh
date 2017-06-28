#!/bin/sh

set -e

docker push agileiot/raspberry-pi3-zulujdk:8-jdk
docker push agileiot/raspberry-pi3-zulujdk:8-jdk-maven
docker push agileiot/raspberry-pi3-zulujdk:8-jre

docker push agileiot/intel-nuc-zulujdk:8-jdk
docker push agileiot/intel-nuc-zulujdk:8-jdk-maven
docker push agileiot/intel-nuc-zulujdk:8-jre
