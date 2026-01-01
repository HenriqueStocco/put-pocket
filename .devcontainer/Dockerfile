FROM oven/bun:1.3.5-alpine

RUN apk update && apk upgrade && apk cache clean
RUN apk add build-essential git curl vim

COPY ./script/start.sh /

RUN chmod +x /start.sh

USER bun

WORKDIR /app

CMD ["/start.sh"]
