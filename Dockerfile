# Base image from 
# FROM INSTANCE_NAME.jfrog.io/frogs-docker-dev-virtual/node:18-alpine
ARG REGISTRY_URL DOCKER_REPO_NAME

FROM ${REGISTRY_URL}/${DOCKER_REPO_NAME}/node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Copy dependency definitions
COPY package.json ./package.json
COPY package-lock.json ./package-lock.json

# Install dependencies
RUN npm ci

# Get all the code needed to run the app
COPY . .

# Expose the port the app runs in
EXPOSE 3000

# Serve the app
CMD ["npm", "start"]