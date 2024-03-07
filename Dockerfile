FROM python:3.13.0a4-alpine3.19

RUN apk add --no-cache bash

WORKDIR /app

COPY ./entrypoint.sh .
COPY ./source-code .

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/app/entrypoint.sh"]
