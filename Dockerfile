FROM node:16.17.0-bullseye-slim
# RUN apt-get update && apt-get install -y --no-install-recommend dumb-init
ENV NODE_ENV production
WORKDIR /app
COPY --chown=node:node . .
#RUN npm ci --only=production
RUN npm install
USER node
EXPOSE 3000
CMD ["node", "index.js"]
