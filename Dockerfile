FROM node:14.17.5

RUN mkdir /src
RUN mkdir /src/server

WORKDIR /src

COPY /server/package.json /server/yarn.lock ./server/
CMD yarn install --cwd ./server

COPY . .

EXPOSE 8080
CMD yarn migrate:dev && yarn generate:server && yarn build:server && yarn start:server