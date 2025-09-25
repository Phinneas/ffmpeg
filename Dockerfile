# Use a Debian-based FFmpeg image with shell utilities
FROM jrottenberg/ffmpeg:4.4-alpine
# Or use ubuntu-based image for more tools:
# FROM jrottenberg/ffmpeg:4.4

# Set the working directory
WORKDIR /app

# Copy your files (if any)
COPY . .

# Keep the container running (use sh -c to ensure shell is available)
CMD ["sh", "-c", "tail -f /dev/null"]
