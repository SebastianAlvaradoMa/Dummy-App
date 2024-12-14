FROM node:18.13.0-alpine3.17
RUN addgroup app && adduser -S -G app app
USER app
WORKDIR /app
COPY . .
RUN npm install
#CMD npm start
CMD ["npm", "start"]


