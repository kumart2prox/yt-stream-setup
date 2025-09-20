FROM debian:bullseye
RUN apt-get update && apt-get install -y ffmpeg && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY . /app
RUN chmod +x start.sh
CMD ["./start.sh"]
