FROM node

RUN mkdir -p /code
WORKDIR /code

COPY ./greenscreen /code
RUN npm install
COPY ./config.json /code/config.json
COPY ./gscreen-config.js /code/public/js/gscreen-config.js

EXPOSE 4994
CMD [ "npm", "start" ]
