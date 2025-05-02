# Use the official Bun image
FROM oven/bun:1

# Set the working directory
WORKDIR /app

# Copy package.json and bun.lockb
COPY package.json bun.lockb ./

# Install dependencies
RUN bun install

# Copy the rest of the application files
COPY . .

# Build the application
RUN bun run build

# Set the entry point
CMD ["bun", "run", "server"]
