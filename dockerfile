# Use the official Node.js image
FROM node:18

# Create and set the working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your server listens on (e.g., 3000)
EXPOSE 8080

# Command to run the server
CMD [ "node", "server.js" ,"--public"]