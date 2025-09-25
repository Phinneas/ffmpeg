FROM jrottenberg/ffmpeg:4-alpine

WORKDIR /app

RUN apk add --no-cache python3 py3-pip
COPY server.py /app/
RUN pip3 install flask

CMD ["python3", "server.py"]
