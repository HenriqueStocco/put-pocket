FROM oven/bun:1.3.5-slim

# Config Bun
ENV PATH="~/.bun/bin:${PATH}"
RUN ln -s /usr/local/bin/bun /usr/local/bin/node

RUN apt-get update && apt-get install -y git vim

COPY scripts/start.sh /
RUN chmod +x /start.sh

USER bun 

WORKDIR /home/bun/app

COPY package.json .


CMD ["/start.sh"]
