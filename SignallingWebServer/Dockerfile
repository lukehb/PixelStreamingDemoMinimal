FROM node:10

# Copy all necessary files, dockerignore prunes the rest
COPY . /opt/SignallingWebServer

# Install the dependencies for the signalling server
WORKDIR /opt/SignallingWebServer
RUN npm install .

# Expose TCP port 80 so external applications can access the web server
EXPOSE 80

# Set the signalling server as the container's entrypoint
ENTRYPOINT ["/usr/local/bin/node", "/opt/SignallingWebServer/cirrus.js"]