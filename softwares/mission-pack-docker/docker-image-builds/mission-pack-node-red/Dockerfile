FROM nodered/node-red:4.0.2-debian

# Switch to root user to install system dependencies
USER root

# Update package lists and install necessary system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libcairo2-dev \
    libpango1.0-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    pkg-config \
    ffmpeg \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Ensure the correct permissions for the Node-RED directory
RUN chown -R node-red:node-red /data

# Switch back to node-red user
USER node-red

# Expose port
EXPOSE 1880

# Start Node-RED
CMD ["npm", "start", "--", "--userDir", "/data"]
