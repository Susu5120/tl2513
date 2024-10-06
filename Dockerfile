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

RUN cd /app &&\
     apt-get update && apt-get install -y supervisor &&\
     npm install -r package.json &&\
     cd /app/blumtod &&\
     python3 -m venv venv &&\
     /app/blumtod/venv/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/blumtod/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt &&\
     cd /app/MemeFiBot &&\
     python3 -m venv venv &&\
     /app/MemeFiBot/venv/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/MemeFiBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt &&\
     cd /app/Tomarket &&\
     python3 -m venv venv &&\
     /app/Tomarket/venv/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/Tomarket/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt &&\
     chmod +x /app/supervisord.conf

RUN mkdir -p /app/log

COPY /app/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["bash","/app/start.sh"]