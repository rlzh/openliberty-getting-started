FROM icr.io/appcafe/open-liberty:kernel-slim-java11-openj9-ubi
# FROM rlzh/openliberty:openjdk11-slim-focal
# FROM rlzh/openliberty:openjdk11-slim-ubi-minimal

ARG VERSION=1.0
ARG REVISION=SNAPSHOT
ARG VERBOSE=true

# install features
COPY --chown=1001:0 src/main/liberty/config/server.xml /config/
RUN features.sh

LABEL \
  org.opencontainers.image.authors="Your Name" \
  org.opencontainers.image.vendor="IBM" \
  org.opencontainers.image.url="local" \
  org.opencontainers.image.source="https://github.com/OpenLiberty/guide-getting-started" \
  org.opencontainers.image.version="$VERSION" \
  org.opencontainers.image.revision="$REVISION" \
  vendor="Open Liberty" \
  name="system" \
  version="$VERSION-$REVISION" \
  summary="The system microservice from the Getting Started guide" \
  description="This image contains the system microservice running with the Open Liberty runtime."

COPY --chown=1001:0 src/main/liberty/config/ /config/
COPY --chown=1001:0 target/*.war /config/apps/

RUN configure.sh
