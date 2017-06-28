#!/bin/sh

set -e

docker build -f armv7l/Dockerfile       -t agileiot/raspberry-pi3-zulujdk:8-jdk       armv7l
docker build -f armv7l/Dockerfile.maven -t agileiot/raspberry-pi3-zulujdk:8-jdk-maven armv7l
docker build -f armv7l/Dockerfile.jre   -t agileiot/raspberry-pi3-zulujdk:8-jre       armv7l

docker build -f x86_64/Dockerfile       -t agileiot/intel-nuc-zulujdk:8-jdk       x86_64
docker build -f x86_64/Dockerfile.maven -t agileiot/intel-nuc-zulujdk:8-jdk-maven x86_64
docker build -f x86_64/Dockerfile.jre   -t agileiot/intel-nuc-zulujdk:8-jre       x86_64
