FROM alpine:latest
LABEL maintainer="Thus0"

RUN apk update && apk upgrade && \
    apk add vim && \
    apk add mosquitto-clients

# Copy files
COPY files /app

# Default command
CMD ["/app/entrypoint.sh"]
