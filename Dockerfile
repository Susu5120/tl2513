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
    apt-get install -y nodejs

COPY app/ /app/

RUN chmod +x /app/build.sh &&\
     bash /app/build.sh &&\
     rm -rf /app/build.sh

COPY /app/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["bash","/app/start.sh"]