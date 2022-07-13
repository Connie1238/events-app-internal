# Use base image of node
FROM node:14-alpine

# Copy all contents from the parent folder to the image folder called /app
# .dockerignore will prevent specific files from copying over that we don't want in the image
COPY . /app/

# Navigate to the /app folder within the image
WORKDIR /app

# Image build process to provide app dependencies via NPM
RUN npm install

# Command used to run the application when executing the "docker run.." command 
CMD ["node", "server.js"]