# syntax=docker/dockerfile:1

# This image works. It is also far larger than it needs to be.
FROM node:24

# Tools someone needed once while debugging
RUN apt-get update
RUN apt-get install -y build-essential curl git vim

WORKDIR /app

# Copy everything first
COPY . .

# Install every dependency, including the ones only needed to compile
RUN npm install

# Compile the TypeScript
RUN npm run build

EXPOSE 3000
CMD ["npm", "start"]
