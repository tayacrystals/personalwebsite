FROM oven/bun:1 AS base
WORKDIR /app

# Install dependencies
COPY package.json bun.lock ./
RUN bun install --frozen-lockfile

# Copy application code
COPY . .

# Expose port
EXPOSE 3000

# Run the application
CMD ["bun", "run", "index.tsx"]
