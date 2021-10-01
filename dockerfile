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

# docker build -t strapi_image .
# docker run --network host --name strapi-container -d --mount type=bind,source=/home/botz/Documents/Interware-repos/IW-Strapi-Front-End/strapi/.tmp/data.db,target=/home/botz/Documents/Interware-repos/IW-Strapi-Front-End/strapi/.tmp/data.db strapi_image