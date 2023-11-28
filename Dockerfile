#From base image  with nodejs
FROM node:12.2.0-alpine

#Need to create a working directory
WORKDIR app/

#Copy the code from local file system (source) to container (destination)
COPY . /app

#Now need to commands shared by developer
RUN npm install

#Here application is ready 
#After running npm we need to run for executing the project in the container
CMD ["node","app.js"]
