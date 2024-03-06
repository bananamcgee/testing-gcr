FROM alpine

RUN apk add --no-cache bash

WORKDIR /

COPY entrypoint.sh .
COPY app .

RUN chmod +x /entrypoint.sh
RUN chmod +x /app/__init__.py

ENTRYPOINT ["/entrypoint.sh"]
