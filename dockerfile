# Use the official FFmpeg image as a base
FROM jrottenberg/ffmpeg:latest

# Set the working directory inside the container
WORKDIR /app

# Copy your scripts or files into the container
COPY . .

# Keep the container running (optional, for debugging)
CMD ["tail", "-f", "/dev/null"]
