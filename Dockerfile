FROM resin/raspberry-pi3-debian

RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

#FROM resin/raspberrypi3-buildpack-deps:jessie-scm

# Notes: there are debian/ubuntu repositories, but only for x86_64. This is how it would work:
# Pull Zulu OpenJDK binaries from official repository:
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9
#RUN echo "deb http://repos.azulsystems.com/ubuntu stable main" >> /etc/apt/sources.list.d/zulu.list
#RUN apt-get update
#RUN apt-get -y install zulu-8=8.21.0.1

# Pull tgz version of ZuluJDK
RUN curl -O http://cdn.azul.com/zulu-embedded/bin/ezdk-1.8.0_121-8.20.0.42-eval-linux_aarch32hf.tar.gz && \
    mkdir -p /usr/lib/jvm && \
    tar xf ezdk*.tar.gz -C /usr/lib/jvm && \
    rm ezdk-1.8.0_121-8.20.0.42-eval-linux_aarch32hf.tar.gz

# Enforce java version through path. This is needed to override JDK version installed later as dependencies.
# Setting up alternatives (update-alternatives) correctly might be a better way in debian.
ENV PATH="/usr/lib/jvm/ezdk-1.8.0_121-8.20.0.42-eval-linux_aarch32hf/bin/:${PATH}"

