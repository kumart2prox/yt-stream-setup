FROM ubuntu:22.04

# Install required packages
RUN apt-get update && apt-get install -y \
    ffmpeg \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your streaming files
COPY start.sh .
COPY mainvideonosound.mp4 .
COPY song2.mp3 .

# Make the script executable
RUN chmod +x start.sh

# Start the stream
CMD ["./start.sh"]
