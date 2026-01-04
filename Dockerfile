# Build stage
FROM node:24-alpine as build
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm ci

# Copy source code
COPY . .

# Run build if you have a build step
# If you don't have "npm run build", you can remove this line
RUN npm run build || echo "No build script, skipping"

# Final stage
FROM node:24-alpine
WORKDIR /app

# Copy from build stage
COPY --from=build /app .

# Default command
CMD ["node", "server.js"]
