############################################################
# Dockerfile to build vim  container images
# Based on Alpine linux
############################################################

# Set the base image to Ubuntu
FROM alpine

# File Author / Maintainer
MAINTAINER yoni davidson

# Update the repository sources list
RUN apk --update add git 

RUN apk --update add vim && \
git clone git://github.com/humiaozuzu/dot-vimrc.git ~/.vim && \
ln -s ~/.vim/vimrc ~/.vimrc && \
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle   

ADD install_bundles.sh /tmp/ 

RUN /bin/sh -c "/tmp/install_bundles.sh" && \
rm -rf /tmp/src && \
rm -rf /var/cache/apk/*  

ENTRYPOINT  vim  
