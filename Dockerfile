# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install any required dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Set the container's startup command to run the application
CMD ["npm", "start"]



