FROM node:16

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json ./
COPY --chown=node:node . /usr/src/app

# RUN npm install
# If you are building your code for production
RUN /bin/su nonroot
RUN npm ci --only=production

# Bundle app source
# COPY . .

USER node

EXPOSE 3000
CMD [ "node", "index.js" ]
