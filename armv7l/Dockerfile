FROM resin/raspberry-pi3-buildpack-deps:jessie-scm
#FROM resin/raspberrypi3-buildpack-deps:jessie-scm # this version had core dumps

ENV DL_PREFIX=http://cdn.azul.com/zulu-embedded/bin
ENV ZULUJDK_VERSION=ezdk-1.8.0_121-8.20.0.42-eval-linux_aarch32hf

# Notes: there are debian/ubuntu repositories, but only for x86_64. This is how it would work:
# Pull Zulu OpenJDK binaries from official repository:
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0x219BD9C9
#RUN echo "deb http://repos.azulsystems.com/ubuntu stable main" >> /etc/apt/sources.list.d/zulu.list
#RUN apt-get update
#RUN apt-get -y install zulu-8=8.21.0.1

# Pull tgz version of ZuluJDK
RUN curl -O ${DL_PREFIX}/${ZULUJDK_VERSION}.tar.gz && \
    mkdir -p /usr/lib/jvm && \
    tar xf ${ZULUJDK_VERSION}.tar.gz -C /usr/lib/jvm && \
    rm ${ZULUJDK_VERSION}.tar.gz

# Enforce java version through path. This is needed to override JDK version installed later as dependencies.
# Setting up alternatives (update-alternatives) correctly might be a better way in debian.
ENV PATH="/usr/lib/jvm/${ZULUJDK_VERSION}/bin/:${PATH}"

