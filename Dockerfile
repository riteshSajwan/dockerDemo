# for contenerize nodejs app
FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json .
RUN npm ci
COPY . .
# CMD ["npm","start"]
CMD ["npm","run","dev"]

# FROM imagename:version
# WORKDIR working directory where app will run in container
# Copy all packages
# RUN npm install with actual version
# Copy source i.e folder to destination /usr/..
# run npm start