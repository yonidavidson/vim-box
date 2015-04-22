############################################################
# Dockerfile to build vim  container images
# Based on Alpine linux
############################################################

# Set the base image to alpine
FROM alpine

# File Author / Maintainer
MAINTAINER yoni davidson

# Update the repository sources list
RUN apk --update add git curl bash vim && \
curl http://j.mp/spf13-vim3 -L -o - | /bin/bash
rm -rf /tmp/src && \
rm -rf /var/cache/apk/*  

ENTRYPOINT  vim  
