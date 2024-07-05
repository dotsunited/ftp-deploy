FROM node:20-alpine

WORKDIR /usr/app

# Update and upgrade the system
RUN apk update --no-cache && \
    apk upgrade --no-cache

# Install package
RUN npm install -g @samkirkland/ftp-deploy
