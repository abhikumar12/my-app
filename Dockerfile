# Build stage
FROM node:24-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Final stage
FROM node:24-alpine
WORKDIR /app
COPY --from=build /app .
CMD ["node", "server.js"]
