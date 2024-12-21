# Use Node.js base image
FROM node:18-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY app/package.json ./
RUN npm install

# Copy the app source code
COPY app/ ./

# Expose the port
EXPOSE 3000

# Start the app
CMD ["npm", "start"]
