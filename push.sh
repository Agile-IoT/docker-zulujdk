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

docker push agileiot/raspberry-pi3-zulujdk:8-jdk
docker push agileiot/raspberry-pi3-zulujdk:8-jdk-maven
docker push agileiot/raspberry-pi3-zulujdk:8-jre

docker push agileiot/intel-nuc-zulujdk:8-jdk
docker push agileiot/intel-nuc-zulujdk:8-jdk-maven
docker push agileiot/intel-nuc-zulujdk:8-jre
