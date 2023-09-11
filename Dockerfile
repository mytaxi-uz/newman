FROM node:16-alpine

# Set environment variables
ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" ALPINE_NODE_REPO="oznu/alpine-node"
ENV NEWMAN_VERSION 5.3.2

# Install newman
RUN npm install -g newman@${NEWMAN_VERSION}


WORKDIR /etc/newman


