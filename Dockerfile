FROM node:20

WORKDIR /app

COPY ./docker/* ./

RUN npm install ws body-parser express minimist

COPY . .

RUN chmod +x ./start.sh

EXPOSE 8080
EXPOSE 8089

CMD [ "sh","./start.sh" ]
