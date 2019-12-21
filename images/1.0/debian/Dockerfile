FROM guacamole/guacd:1.0.0

# Add requirements and install application
RUN set -ex; \
    apt-get update -q; \
    apt-get install -y --no-install-recommends \
        pulseaudio \
    ; \
    sed -i \
        -e 's|#load-module module-native-protocol-tcp|load-module module-native-protocol-tcp auth-anonymous=1|g' \
        /etc/pulse/default.pa

# Arguments to label built container
ARG TAG
ARG VCS_REF
ARG BUILD_DATE
ARG VERSION=1.0.0

# Container labels (http://label-schema.org/)
# Container annotations (https://github.com/opencontainers/image-spec)
LABEL maintainer="Monogramm maintainers <opensource at monogramm dot io>" \
      product="Apache Guacamole Server" \
      version=$VERSION \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url="https://github.com/Monogramm/docker-guacd" \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.name="Apache Guacamole Server" \
      org.label-schema.description="Guacamole proxy daemon." \
      org.label-schema.url="https://guacamole.apache.org/" \
      org.label-schema.vendor="Apache" \
      org.label-schema.version=$VERSION \
      org.label-schema.schema-version="1.0" \
      org.opencontainers.image.revision=$VCS_REF \
      org.opencontainers.image.source="https://github.com/Monogramm/docker-guacd" \
      org.opencontainers.image.created=$BUILD_DATE \
      org.opencontainers.image.title="Apache Guacamole Server" \
      org.opencontainers.image.description="Guacamole proxy daemon." \
      org.opencontainers.image.url="https://guacamole.apache.org/" \
      org.opencontainers.image.vendor="Apache" \
      org.opencontainers.image.version=$VERSION \
      org.opencontainers.image.authors="Monogramm maintainers <opensource at monogramm dot io>"
