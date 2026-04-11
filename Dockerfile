# Stage 1: Build
FROM node:lts-alpine AS build
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source and build the static site
COPY . .
RUN npm run build

# Stage 2: Runtime (Static Hosting)
FROM nginx:stable-alpine AS runtime

# Copy the static files from the build stage
# Astro builds to the /dist folder by default
COPY --from=build /app/dist /usr/share/nginx/html

# Optional: Add a custom Nginx config to handle client-side routing if needed
# COPY nginx.conf /etc/nginx/conf.d/default.conf
ENV HOST=0.0.0.0
ENV PORT=80
ENV NODE_ENV=development
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]