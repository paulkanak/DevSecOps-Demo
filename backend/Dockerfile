#...........Build stage...........#
FROM node:20-alpine AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci --only=production && npm cache clean --force

#...........Production stage...........#
FROM node:20-alpine AS production
# Security: run as non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup

# Security: remove unnecessary packages
RUN apk --no-cache add dumb-init-1.2.5-r3

WORKDIR /app
COPY --from=build /app/node_modules ./node_modules
COPY ./src ./src

RUN chown -R appuser:appgroup /app
EXPOSE 5000
USER appuser
# Security: use dumb-init for proper signal handling (PID 1 problem)
ENTRYPOINT ["dumb-init", "--"]
CMD ["node", "src/index.js"]
