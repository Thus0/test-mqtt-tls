FROM alpine:latest as base
LABEL maintainer="Thus0"

# STAGE
RUN apk update && apk upgrade && \
    apk add vim && \
    apk add npm

# Change working directory
WORKDIR /app

# Copy files
COPY files /app

# Build MQTT.js
RUN npm install

# STAGE2 : build client image
FROM base as client
ENV PATH "/app/node_modules/mqtt/bin:${PATH}"
CMD ["/app/client/entrypoint.sh"]

# STAGE2 : build server image
FROM base as server
ENV PATH "/app/node_modules/mqtt/bin:${PATH}"
CMD ["/app/server/entrypoint.sh"]

