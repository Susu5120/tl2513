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