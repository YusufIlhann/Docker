# FROM node:14

# WORKDIR /app

# COPY package.json .

# RUN npm install

# COPY . .

# EXPOSE 3000

# VOLUME [ "/app/node_modules" ]

# CMD ["npm", "run", "dev"]


FROM node:7.7.2-alpine
WORKDIR /app
COPY package.json .
RUN npm install --quiet
COPY . .
EXPOSE 3000
CMD node index.js
