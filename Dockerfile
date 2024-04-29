FROM docker.io/alpine:3.19.1
LABEL org.opencontainers.image.authors="Bård Aase <bard.aase@dnb.no>"
LABEL org.opencontainers.image.url="https://gitlab.tech.dnb.no/dnb/dnb-common/docker-images/-/blob/main/tools-pmidp-build-tools/README.md"
LABEL org.opencontainers.image.source="https://gitlab.tech.dnb.no/dnb/dnb-common/docker-images/-/blob/main/tools-pmidp-build-tools/1.0.0"
LABEL org.opencontainers.image.version="1.0.0"
LABEL org.opencontainers.image.title="PM IDP build image"
LABEL org.opencontainers.image.description="This image is used to run shared pipelines from PM's Internal Developer Platform."
LABEL org.opencontainers.image.base.name="docker.io/alpine:3.19.1"
RUN apk add --no-cache \
    docker-cli=25.0.5-r0 \
    docker-credential-ecr-login=0.6.0-r17 \
    git=2.43.0-r0 \
    bash=5.2.21-r0 \
    yq=4.35.2-r3 \
    jq=1.7.1-r0 \
    sed=4.9-r2 \
    pcre2=10.42-r2 \
    grep=3.11-r0 \
    gawk=5.3.0-r0 \
    curl=8.5.0-r0 \
    taplo=0.8.1-r0