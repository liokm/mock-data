FROM iojs:2.0.0

MAINTAINER Ben Lynch <ben@jude.io>

RUN npm install -g node-gyp && \
    node-gyp clean && \
    npm cache clean

RUN git clone https://c305eeec149ac673c56c04afbb6b7a07b8f2c8f9:x-oauth-basic@github.com/jude-io/services-credentials.git /app/
RUN cd /app

WORKDIR /app

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]

