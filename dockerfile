# Install dependencies
FROM node:lts as dependencies
WORKDIR /strapi
COPY package*.json ./
RUN npm install


# Bundle app source
COPY . .

#Environment variables
ENV NODE_ENV=develop
ENV PORT=1337

#Last Step
EXPOSE 1337
CMD [ "node",  "server" ]

# RUN STEPS
# docker build -t strapi_image .
# docker run --network host --name strapi-container -d  strapi_image
# docker container logs strapi-container

# REMOVE STEPS
# docker container rm -f strapi-container
# docker image rm strapi_image .