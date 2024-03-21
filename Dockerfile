FROM node:19-alpine

ARG _WORKDIR=/home/node/app
ARG PORT=3333

USER root
RUN apk add git

WORKDIR ${_WORKDIR}

ADD . ${_WORKDIR}
RUN npm install -force

USER node
EXPOSE ${PORT}

CMD npm run start