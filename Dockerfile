FROM node:18

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock to install dependencies
COPY package.json yarn.lock ./

# Install the application dependencies
RUN yarn install

# Copy the entire project into the container
COPY . .

# Expose the port the server runs on
EXPOSE 3000

# Start the server using yarn
CMD ["yarn", "start"]
