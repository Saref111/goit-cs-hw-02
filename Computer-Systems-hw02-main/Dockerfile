FROM python:3.11

WORKDIR /app

RUN apt-get update && apt-get install -y --reinstall libexpat1
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

ENTRYPOINT ["python", "main.py"]