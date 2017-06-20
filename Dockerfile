FROM node:6.9.3

ARG GIT_COMMIT
ENV GIT_COMMIT ${GIT_COMMIT}

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app


COPY package.json /usr/src/app/

COPY . /usr/src/app

RUN npm install --silent && npm install -g nodemon --silent && npm install -g migrate-mongoose --silent

EXPOSE 80

CMD [ "npm", "start" ]