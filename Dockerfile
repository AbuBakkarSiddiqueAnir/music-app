FROM node:18.14.2-alpine
WORKDIR /src
ENV PATH /app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN yarn install --silent
RUN yarn install @vitejs/plugin-react@^3.1.0 -g --silent
COPY . ./
CMD ["yarn", "dev"]