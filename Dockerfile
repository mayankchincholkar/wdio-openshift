# Comment
#FROM mateuszsiek/nodejs-chrome
#FROM thompsnm/nodejs-chrome
FROM thompsnm/nodejs-chrome-xvfb
RUN adduser node root
COPY .npmrc /home/node/app/
COPY ./test /home/node/app/test
COPY package.json /home/node/app/
COPY wdio.conf.js /home/node/app/
WORKDIR /home/node/app
RUN npm install
RUN chmod -R 775 /home/node/app
RUN chown -R node:root /home/node/app
CMD ./node_modules/.bin/wdio
EXPOSE 9515
