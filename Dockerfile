FROM node:alpine
WORKDIR /app
RUN npm install
RUN npm run build:dev
RUN npm install pm2 -g
COPY package.json .
COPY . .
EXPOSE 3000
CMD ["pm2-runtime","dist/bundle.js"]