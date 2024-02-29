FROM node:20-alpine

RUN apk add --no-cache git

RUN git clone https://github.com/epicisgood/education.git

WORKDIR /education

RUN npm install

CMD npm start
#dsfsadfsafsd
