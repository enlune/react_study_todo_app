# base image
FROM node:latest

# set working directory
#WORKDIR /Users/ryu/react_project/react_web/hello-react
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
# ENV PATH /Users/ryu/react_project/react_web/hello-react/node_modules/.bin:$PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
# COPY package.json /Users/ryu/react_project/react_web/hello-react/package.json
COPY package.json /app/package.json
# RUN npm install --silent
# RUN npm install react-scripts@3.0.1 -g --silent
RUN yarn add silent
RUN yarn add react-scripts@5.0.1 -g --silent
RUN yarn add classnames
RUN yarn add styled-components
RUN yarn add sass classnames react-icons
RUN yarn add react-virtualized

# start app
CMD ["yarn", "start"]

# start command
# docker-compose up