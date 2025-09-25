FROM jrottenberg/ffmpeg:4.4

RUN apt-get update && apt-get install -y python3 python3-pip
COPY server.py /app/
RUN pip3 install flask

WORKDIR /app

CMD ["python3", "server.py"]
