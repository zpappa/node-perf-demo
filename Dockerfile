FROM node
RUN mkdir /opt/nodeserver
COPY bin /opt/nodeserver/bin
COPY public /opt/nodeserver/public
COPY *.j* /opt/nodeserver/
COPY routes /opt/nodeserver/routes
WORKDIR /opt/nodeserver
RUN npm install
CMD npm start
