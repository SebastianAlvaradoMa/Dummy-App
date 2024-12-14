FROM node:18.13.0-alpine3.17
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
RUN mkdir data
COPY package*.json .
RUN npm install
COPY . .
#CMD npm start
CMD ["npm", "start"]


