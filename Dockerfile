FROM node:0.12

MAINTAINER Frank McPherson

# Bundle app source
COPY . /river4

# Create river data directory
RUN mkdir /river4data
RUN mkdir /river4data/data
RUN mkdir /river4data/lists
RUN mkdir /river4data/rivers

# Initialize the readinglist
COPY readinglist.opml /river4data/lists/readinglist.opml

# Mount river data directory as volume
VOLUME /river4data

# Install app dependencies
RUN cd /river4; npm install

# Map the application port to the docker container
EXPOSE 1337

# Run the app
# CMD cd /river4 && node river4.js
CMD node /river4/river4.js





