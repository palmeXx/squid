FROM alpine:3.14
LABEL maintainer="maritn@palme.digital"

ARG SQUID_VERSION=5.0.6-r0 

RUN apk update \
  && apk add ca-certificates bash squid=${SQUID_VERSION}

COPY scripts /

EXPOSE 3128/tcp
ENTRYPOINT ["entrypoint.sh"]


