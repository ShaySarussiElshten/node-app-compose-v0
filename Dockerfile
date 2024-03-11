# Use an official Node runtime as a parent image, specifying version 16
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install any needed packages
RUN npm install

# Bundle app source
COPY . .

# Make port 3000 available to the world outside this container
EXPOSE 3000

# Define environment variable
ENV PORT=3000

# Run server.js from the src directory when the container launches
CMD ["node", "src/server.js"]