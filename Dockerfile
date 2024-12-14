FROM node:18.13.0-alpine3.17
COPY . /app/
WORKDIR /app
RUN npm install
RUN addgroup app && adduser -5 -G app app
USER app
