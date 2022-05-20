# syntax=docker/dockerfile:1

FROM python:3.9-slim

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY rpilocator-rss-pushover.py rpilocator-rss-pushover.py

CMD [ "python3", "rpilocator-rss-pushover.py"]
