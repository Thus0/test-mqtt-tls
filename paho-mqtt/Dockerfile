FROM alpine:latest as base
LABEL description="MQTT client examples for ELIOT project"
LABEL maintainer="Thus0"

# STAGE1 : 
RUN apk update && apk upgrade && \
    apk add vim openssl && \
    apk add python3 python3-dev py3-pip py3-psutil 

# Change working directory
WORKDIR /app

# Copy files
COPY files /app

# Build paho-mqtt
RUN pip install -r requirements.txt

# STAGE2 : build client image
FROM base as client
COPY client /app/client/
CMD ["/app/client/entrypoint.sh"]

# STAGE2 : build image image
FROM base as server
COPY server /app/server/
CMD ["/app/server/entrypoint.sh"]

