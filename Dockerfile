FROM node:16-alpine

# Set environment variables
ENV LC_ALL="en_US.UTF-8" LANG="en_US.UTF-8" LANGUAGE="en_US.UTF-8" ALPINE_NODE_REPO="oznu/alpine-node"
ENV NEWMAN_VERSION 6.1.0

RUN apk add --no-cache curl

# Install newman
RUN npm install -g newman@${NEWMAN_VERSION}
RUN npm install -g newman-reporter-html
RUN npm install -g newman-reporter-htmlextra

WORKDIR /etc/newman


