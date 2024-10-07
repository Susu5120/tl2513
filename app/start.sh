cd /app
pm2 start /app/warp/start.sh --name Wireproxy --log /dev/null
pm2 start /app/index.js --log /dev/null
#cd /app/blumtod
#python3 -m venv venv
#/app/blumtod/venv/bin/pip3 install --upgrade pip setuptools wheel
#/app/blumtod/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt
pm2 start /app/blumtod/start.sh --name Blum --log /app/blum.log
#cd /app/MemeFiBot
#python3 -m venv venv
#/app/MemeFiBot/venv/bin/pip3 install --upgrade pip setuptools wheel
#/app/MemeFiBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt
pm2 start /app/MemeFiBot/start.sh --name MemeFi --log /app/MemeFi.log
#cd /app/Tomarket
#python3 -m venv venv
#/app/Tomarket/venv/bin/pip3 install --upgrade pip setuptools wheel
#/app/Tomarket/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt
pm2 start /app/Tomarket/start.sh --name Tomarket --log /app/Tomarket.log
sleep 20d