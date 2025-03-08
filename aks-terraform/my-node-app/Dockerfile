# Use an official Node.js image as the base
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json ./
RUN npm install

# Copy the rest of the app
COPY . .

# Expose port 8080
EXPOSE 8080

# Command to run the app
CMD ["npm", "start"]
