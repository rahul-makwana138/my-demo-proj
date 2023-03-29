# alpine image for node
FROM node:16-alpine3.17

# add user to docker group for non root level privileges
RUN adduser -u 10001 -S ciad

# setting up the working directory
WORKDIR /usr/src/app
COPY package*.json ./

# Expose port
EXPOSE 3000

# Install the frontend application
COPY . .
RUN npm install

# Specify a user to be used
USER ciad

# Run the frontend application
CMD ["npm","start"]
