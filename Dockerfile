FROM node:14 AS build

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
RUN npm install
COPY . ./
RUN npm run build

FROM nginx:latest
COPY --from=build /app/public /usr/share/nginx/html