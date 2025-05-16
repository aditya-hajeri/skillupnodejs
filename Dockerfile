# FROM node:latest
# WORKDIR /app
# COPY myserver.js /app
# CMD ["node", "myserver.js"]
# EXPOSE 3030

# Use the official Node.js image
FROM node:latest

# Create app directory
WORKDIR /app

# Copy app files
# COPY index.js /app
COPY package*.json ./
RUN npm install

COPY . .

# Start the app
CMD ["node", "index.js"]

# Expose the app port
EXPOSE 9595

