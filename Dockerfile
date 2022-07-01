# Dockerfile
FROM node:16-slim

# create destination directory
RUN mkdir -p /usr/src/research-bigfive
WORKDIR /usr/src/research-bigfive

# copy the app, note .dockerignore
COPY . /usr/src/research-bigfive/
RUN yarn install
RUN yarn build

EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000

CMD [ "yarn", "start" ]