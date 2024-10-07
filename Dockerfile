FROM python:3.10.15-bullseye
EXPOSE 3000
WORKDIR /app

# 安装必要的系统工具和依赖
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 安装 Node.js 和 PM2
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs &&\
    npm install -g pm2

COPY app/ /app/

RUN apt-get update && apt-get install -y supervisor &&\
     npm install -r package.json &&\
     wget -O /app/warp/wireproxy.tar.gz https://github.com/pufferffish/wireproxy/releases/latest/download/wireproxy_linux_amd64.tar.gz &&\
     tar xzvf /app/warp/wireproxy.tar.gz /app/warp/wireproxy &&\
     rm -rf /app/warp/wireproxy.tar.gz &&\
     chmod +x /app/supervisord.conf /app/warp/wireproxy

RUN mkdir -p /app/log

COPY /app/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["bash","/app/bash.sh"]