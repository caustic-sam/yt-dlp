FROM python:3.11-slim

# Install yt-dlp and dependencies
RUN apt-get update && apt-get install -y \
    ffmpeg \
    curl \
 && pip install --no-cache-dir yt-dlp

# Set working directory
WORKDIR /downloads

# Default command (you can override in docker-compose)
ENTRYPOINT ["yt-dlp"]

RUN echo "Build context:" && ls -al
