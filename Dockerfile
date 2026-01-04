# Build stage
FROM node:16-alpine as build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Final stage
FROM node:16-alpine
WORKDIR /app
COPY --from=build /app .
CMD ["node", "server.js"]
