# Use a base image that includes both FFmpeg and basic shell utilities
FROM jrottenberg/ffmpeg:4.4

WORKDIR /app

# Copy any necessary files
COPY . .

# Use a simple shell command to keep the container running
CMD ["sh", "-c", "while true; do sleep 1; done"]
