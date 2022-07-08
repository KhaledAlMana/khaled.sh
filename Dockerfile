FROM node:latest as build

WORKDIR /var/app

COPY package.json package-lock.json* ./
RUN npm ci && npm cache clean --force

COPY ./ .
RUN npm run build

FROM nginx:latest

## Custom NGINX settings
COPY --from=build /var/app/docker-configs/nginx.conf /etc/nginx/nginx.conf
COPY --from=build /var/app/docker-configs/default.conf /etc/nginx/conf.d/default.conf

## Application folder
WORKDIR /usr/share/nginx/html

COPY --from=build /var/app/dist .