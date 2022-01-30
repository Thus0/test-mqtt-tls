FROM alpine:latest
LABEL maintainer="Thus0"

RUN apk update && apk upgrade && \
    apk add vim iproute2 iptables tcpdump tshark && \
    apk add git gcc make libc-dev 

RUN apk add openssl openssl-dev mbedtls-utils mbedtls-dev && \
    apk add python3 python3-dev py3-pip && \
    pip install wheel

# Copy files
COPY files app/

# Default command
WORKDIR /app
CMD ["/app/entrypoint.sh"]
