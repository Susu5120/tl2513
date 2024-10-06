cd /app/blumtod
python3 -m venv venv
/app/blumtod/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/blumtod/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt
cd /app/MemeFiBot
python3 -m venv venv
/app/MemeFiBot/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/MemeFiBot/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt
cd /app/Tomarket
python3 -m venv venv
/app/Tomarket/venv/bin/pip3 install --upgrade pip setuptools wheel
/app/Tomarket/venv/bin/pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt
cd /app
screen -S Blum -dm
screen -S Blum -X stuff "/app/blumtod/venv/bin/python3 /app/blumtod/bot.py -A 6\n"
screen -S MemeFi -dm
screen -S MemeFi -X stuff "/app/MemeFiBot/venv/bin/python3 /app/MemeFiBot/main.py -a 2\n"
screen -S Tomarket -dm
screen -S Tomarket -X stuff "/app/Tomarket/venv/bin/python3 /app/Tomarket/main.py -a 1\n"
sleep 20d
