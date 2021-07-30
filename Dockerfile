FROM python:3.8-slim-buster AS builder
ADD . .
COPY /data/train.csv /app/train.csv
COPY /data/test.csv /app/test.csv
COPY requirements.txt .
RUN pip install -r requirements.txt
CMD ["python","-m","unittest","discover","-s","tests"]

