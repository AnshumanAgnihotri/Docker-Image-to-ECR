
# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install app dependencies
RUN npm install

# Set the destination file path
ENV DESTINATION_FILE=/app/destination

# Set the source file path
ENV SOURCE_FILE=/app/source

# Expose port 3000 for the application to listen on
EXPOSE 3000
# Start the application
CMD [ "npm", "start" ]

