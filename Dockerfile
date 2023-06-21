# Use an official Node.js runtime as the base image
FROM node:14-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install

# Copy the entire project directory to the working directory
COPY . .

# Expose the port on which your Express app will listen
EXPOSE 3000

# Set the command to run your Express app
CMD ["node", "routes/route.js"]
