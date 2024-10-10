FROM python:3.10.15-bullseye
EXPOSE 3000
WORKDIR /app

# 安装必要的系统工具和依赖
RUN apt-get update && apt-get install -y \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# 安装 Node.js 和 PM2
RUN curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && \
    apt-get install -y nodejs &&\
    npm install -g pm2

COPY app/ /app/

RUN npm install -r package.json &&\
     apt-get install -y shellinabox &&\
     echo 'root:good.360.cn' | chpasswd &&\
     wget -O /app/warp/wireproxy.tar.gz https://github.com/pufferffish/wireproxy/releases/latest/download/wireproxy_linux_amd64.tar.gz &&\
     cd /app/warp &&\
     tar xzvf /app/warp/wireproxy.tar.gz wireproxy &&\
     rm -rf /app/warp/wireproxy.tar.gz &&\
     chmod +x /app/warp/wireproxy &&\
     mkdir /app/python3 &&\
     chmod +x /app/python3 &&\
     cd /app/python3 &&\
     python3 -m venv /app/python3/1 &&\
     /app/python3/1/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/python3/1/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/install/1-bl.txt &&\
     python3 -m venv /app/python3/2 &&\
     /app/python3/2/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/python3/2/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/install/2-meme.txt &&\
     python3 -m venv /app/python3/3 &&\
     /app/python3/3/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/python3/3/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/install/3-TF.txt &&\
     python3 -m venv /app/python3/4 &&\
     /app/python3/4/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/python3/4/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/install/4-To.txt &&\
     python3 -m venv /app/python3/5 &&\
     /app/python3/5/bin/pip3 install --upgrade pip setuptools wheel &&\
     /app/python3/5/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/install/5-YCB.txt &&\
     rm -rf /app/install

RUN mkdir -p /app/log

CMD ["bash","/app/start.sh"]
