FROM node:alpine@sha256:a67a33f791d1c86ced985f339fa160f6188f590ebbe963fe11cc00adc971fa41

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install --silent

RUN npm install react-scripts@5.0.1 -g --silent

COPY . ./

CMD ["npm", "start"]
