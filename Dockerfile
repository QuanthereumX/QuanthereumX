# Dockerfile for QuanthereumX

# Use official Node.js image as base
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application
COPY . .

# Expose application port
EXPOSE 4000

# Start the backend API
CMD ["npm", "start"]
