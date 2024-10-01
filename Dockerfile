# Use an official Node.js runtime as a parent image
FROM node:lts-alpine

# Set the working directory inside the container
WORKDIR /app

# Install PM2 globally
RUN npm install pm2 -g

# Copy package.json and package-lock.json before other files for better caching
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the source code to the working directory
COPY . .

# Build the TypeScript code into JavaScript
RUN npm run build

# Expose the port the app runs on
EXPOSE 3000

# Start the app using PM2
CMD ["pm2-runtime", "dist/app.js"]
