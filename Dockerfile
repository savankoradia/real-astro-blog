# Stage 1: Build
FROM node:lts-alpine AS build
WORKDIR /app
COPY package.json package-lock.json* ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: Runtime
FROM node:lts-alpine AS runtime
WORKDIR /app
COPY --from=build /app/dist ./dist
COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/package.json ./package.json

# Environment variables for Coolify
ENV HOST=0.0.0.0
ENV PORT=80
ENV NODE_ENV=production

EXPOSE 80

# Start the Astro SSR server
CMD ["node", "./dist/server/entry.mjs"]