FROM nodered/node-red:latest

USER root

RUN apk add --no-cache \
      chromium \
      nss \
      freetype \
      harfbuzz \
      ca-certificates \
      ttf-freefont \
      nodejs \
      yarn

ENV PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser

RUN npm i cheerio@1.0.0-rc.9 

WORKDIR /tmp

RUN npm i puppeteer@13

WORKDIR /usr/src/node-red

USER node-red