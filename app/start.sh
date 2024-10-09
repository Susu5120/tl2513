cd /app
pm2 start /app/warp/start.sh --name Wireproxy --log /dev/null
pm2 start /app/index.js --log /dev/null 
cd /app/blumtod
/app/blumtod/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/blumtod/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt
pm2 start /app/blumtod/start.sh --name Bl --log /app/log/Bl.log
cd /app/MemeFiBot
/app/MemeFiBot/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/MemeFiBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt
pm2 start /app/MemeFiBot/start.sh --name Me --log /app/log/Me.log
cd /app/Tomarket
/app/Tomarket/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/Tomarket/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt
pm2 start /app/Tomarket/start.sh --name To --log /app/log/To.log
cd /app/TimeFarmBot
/app/TimeFarmBot/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/TimeFarmBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/TimeFarmBot/requirements.txt
pm2 start /app/TimeFarmBot/start.sh --name Ti --log /app/log/Ti.log
cd /app/YesCoinBot
/app/YesCoinBot/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/YesCoinBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/YesCoinBot/requirements.txt
pm2 start /app/YesCoinBot/start.sh --name Yes --log /app/log/Yes.log
/usr/bin/shellinaboxd -t -s /:LOGIN
