FROM python:3.13.0a4-alpine3.19

RUN apk add --no-cache bash

WORKDIR /

COPY entrypoint.sh .
COPY app .

RUN chmod +x /entrypoint.sh
RUN chmod +x /app/__init__.py

ENTRYPOINT ["/entrypoint.sh"]
