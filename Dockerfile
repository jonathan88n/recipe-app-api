FROM python:3.7-alpine
LABEL Maintainer="Jonathan Nguyen"

ENV PYTHONUNBBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app .

RUN adduser -D user
USER user
