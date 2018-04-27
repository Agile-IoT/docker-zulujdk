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

for arch in raspberry-pi3 intel-nuc; do

  for version in 8-jdk 8-jdk-maven 8-jre 8-jre-alpine; do

    docker pull agileiot/$arch-zulujdk:$version
    docker tag agileiot/$arch-zulujdk:$version agileiot/$arch-zulujdk:$version-20170721
    docker push agileiot/$arch-zulujdk:$version-20170721

  done
  
done
