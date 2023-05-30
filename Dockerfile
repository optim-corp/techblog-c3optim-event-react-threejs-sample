FROM node:20-alpine

RUN mkdir /threejs

WORKDIR /threejs

COPY ./package.json .
COPY ./pnpm-lock.yaml .

RUN npm update -g npm
RUN npm install -g pnpm
RUN pnpm install
