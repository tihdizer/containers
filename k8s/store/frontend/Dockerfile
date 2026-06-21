FROM node:24.13.0-alpine AS build

ENV NODE_OPTIONS=--openssl-legacy-provider

WORKDIR /frontend

COPY package.json package-lock.json ./
RUN npm ci

COPY . .
RUN npm run build

FROM nginx:1.30-alpine3.23-slim

COPY --from=build /frontend/dist/ /usr/share/nginx/html

RUN apk add --no-cache curl

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=30s --start-period=10s --retries=3 CMD curl -fsS http://127.0.0.1/ || exit 1
