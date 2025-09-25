FROM jrottenberg/ffmpeg:4-alpine

WORKDIR /app

# Install dependencies
RUN apk add --no-cache python3 py3-pip

# Copy all files (including server.py)
COPY . .

# Install Flask
RUN pip3 install flask

# Run the server
CMD ["python3", "server.py"]
