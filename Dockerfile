FROM node:16 as build-stage


RUN mkdir /usr/app


COPY . /usr/app/

WORKDIR /usr/app

RUN npm install

RUN npm run build


RUN rm -rf ./*
COPY --from=build-stage /usr/app/build .
EXPOSE 80
ENTRYPOINT ["nginx","-g","daemon off;"]
