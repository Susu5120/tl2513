cd /app
pm2 start /app/warp/start.sh --name Wireproxy --log /dev/null
cd /app/blumtod
/app/blumtod/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/blumtod/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt
pm2 start /app/blumtod/start.sh --name Blum --log /app/log/Blum.log
cd /app/MemeFiBot
/app/MemeFiBot/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/MemeFiBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt
pm2 start /app/MemeFiBot/start.sh --name MemeFi --log /app/log/MemeFi.log
cd /app/Tomarket
/app/Tomarket/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/Tomarket/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt
pm2 start /app/Tomarket/start.sh --name Tomarket --log /app/log/Tomarket.log
cd /app
node /app/index.js