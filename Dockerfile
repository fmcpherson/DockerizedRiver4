FROM node:0.12

# Bundle app source
COPY . /river4

# Install app dependencies
RUN cd /river4; npm install

# Map the application port to the docker container
EXPOSE 1337

# Run the app
# CMD [cd /river4 ; node", "/river4/river4.js"]
CMD cd /river4 && node river4.js




