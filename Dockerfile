FROM python:3.7.3-alpine
RUN apk update && apk upgrade && apk add bash
COPY . /djtest
WORKDIR /djtest
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 8000