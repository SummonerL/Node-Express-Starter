FROM node:4-onbuild

# Install app dependencies
ADD package.json package.json
RUN npm install
ADD . .

CMD [ "npm", "start" ]