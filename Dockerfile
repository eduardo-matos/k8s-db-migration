FROM python:3.7-alpine

COPY . /app
WORKDIR /app

RUN apk add mariadb-dev && apk add build-base && pip install -r requirements.txt

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

