FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Create app directory
WORKDIR /app

# Copy your streaming files
COPY start.sh .
COPY mainvideonosound.mp4 .
COPY song2.mp3 .

# Make start.sh executable
RUN chmod +x start.sh

# Start streaming
CMD ["./start.sh"]
