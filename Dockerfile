#choosing a base image 
FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl 
RUN curl -sl https://deb.nodesource.com/setup_18.x | bash
RUN apt-get upgrade -y 
RUN apt-get install -y nodejs

#now we have node js installed in our container

#now we will copy our code to the container

COPY package.json package.json 
COPY package-lock.json package-lock.json
COPY main.js main.js

#now we will install the dependencies which are mentioned in the package.json file when we run the container
RUN npm install

#now we will run the main.js file when we run the container
ENTRYPOINT [ "node","main.js" ]

