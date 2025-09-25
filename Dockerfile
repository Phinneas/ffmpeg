FROM jrottenberg/ffmpeg:4-alpine

WORKDIR /app

# Install dependencies
RUN apk add --no-cache python3 py3-pip && \
    pip3 install flask

# Copy application files
COPY server.py .

# Expose Flask port
EXPOSE 5000

# Override FFmpeg entrypoint to run Python
ENTRYPOINT ["python3"]
CMD ["server.py"]
