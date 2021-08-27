# specify base image
FROM node:alpine

# install depedancies using npm is how we put depedancies on nodejs project
WORKDIR '/usr/app2'
#COPY ./ /usr/app
#COPY ./ ./
COPY package.json .
RUN npm install

COPY ./ ./

#RUN npm install
# default command
CMD ["npm", "start"]


