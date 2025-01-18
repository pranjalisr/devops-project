# Build stage
FROM node:14 AS build
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm ci --only=production

# Production stage
FROM node:14-slim
WORKDIR /usr/src/app
COPY --from=build /usr/src/app/node_modules ./node_modules
COPY . .
EXPOSE 3000
ENV NODE_ENV production
CMD ["node", "app.js"]

