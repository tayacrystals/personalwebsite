# Use official Bun image
FROM oven/bun:1

# Set working directory
WORKDIR /app

# Copy package files for better layer caching
COPY package.json bun.loc[k] ./

# Install dependencies
RUN bun install

# Copy application files
COPY index.tsx tsconfig.json ./
COPY home/ ./home/

# Expose the default Bun serve port
EXPOSE 3000

# Start the application
CMD ["bun", "run", "index.tsx"]
