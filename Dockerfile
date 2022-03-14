  
FROM node:16 as build-stage


RUN mkdir /usr/app


COPY . /usr/app/

WORKDIR /usr/app
RUN yarn

RUN npm install



RUN npm run build

EXPOSE 80

CMD ["npm", "start"]
