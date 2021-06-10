FROM php:8.0-fpm

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y python3-pip zip \
    && curl -sL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update \
    && apt-get install -y --no-install-recommends nodejs \
    && npm install -g npm

RUN pip3 install awscli --upgrade
RUN npm install -g serverless
