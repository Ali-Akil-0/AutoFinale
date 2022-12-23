# ==== CONFIGURE =====
# Use a Node 16 base image
FROM node:17-alpine 

ENV NODE_ENV=production

WORKDIR /app
# Copy app files
COPY ["package.json", "./"]

RUN npm i 

COPY . .
EXPOSE 3000
CMD [ "npm", "start"]