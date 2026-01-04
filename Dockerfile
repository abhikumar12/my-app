# Build stage
FROM node:16-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build  # works because of dummy build script

# Final stage
FROM node:16-alpine
WORKDIR /app
COPY --from=build /app .
CMD ["node", "server.js"]
