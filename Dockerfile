FROM node:alpine
WORKDIR /app
COPY package.json/ .
COPY . .
RUN npm install
RUN npm run build:dev
RUN npm install pm2 -g
EXPOSE 3000
CMD ["pm2-runtime","dist/bundle.js"]