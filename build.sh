#!/bin/sh
#-------------------------------------------------------------------------------
# Copyright (C) 2017 Create-Net / FBK, and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#     Create-Net / FBK - initial implementation
#-------------------------------------------------------------------------------

set -e

docker build -f armv7l/Dockerfile       -t agileiot/raspberry-pi3-zulujdk:8-jdk       armv7l
docker build -f armv7l/Dockerfile.maven -t agileiot/raspberry-pi3-zulujdk:8-jdk-maven armv7l
docker build -f armv7l/Dockerfile.jre   -t agileiot/raspberry-pi3-zulujdk:8-jre       armv7l

docker build -f x86_64/Dockerfile       -t agileiot/intel-nuc-zulujdk:8-jdk       x86_64
docker build -f x86_64/Dockerfile.maven -t agileiot/intel-nuc-zulujdk:8-jdk-maven x86_64
docker build -f x86_64/Dockerfile.jre   -t agileiot/intel-nuc-zulujdk:8-jre       x86_64
