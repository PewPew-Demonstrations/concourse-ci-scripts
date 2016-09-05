FROM openjdk:8-jdk

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
       jq curl ca-certificates \
    && curl "http://mirror.ventraip.net.au/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz" -o "maven.tar.gz" \
    && tar xzvf maven.tar.gz \
    && ln -s /apache-maven-3.3.9/bin/mvn /usr/local/bin \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /home/ci \
    && groupadd -g 1000 ci \
    && useradd -g ci -d /home/ci -u 1000 -s /bin/bash ci \
    && chown ci:ci /home/ci
