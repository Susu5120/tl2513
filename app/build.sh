npm install -g pm2
cd /app/blumtod
python3 -m venv venv
source venv/bin/activate
pip3 install --upgrade pip setuptools wheel
pip3 install --no-warn-script-location --no-cache-dir -r /app/blumtod/requirements.txt
deactivate
cd /app/MemeFiBot
python3 -m venv venv
source venv/bin/activate
pip3 install --upgrade pip setuptools wheel
pip3 install --no-warn-script-location --no-cache-dir -r /app/MemeFiBot/requirements.txt
deactivate
cd /app/Tomarket
python3 -m venv venv
source venv/bin/activate
pip3 install --upgrade pip setuptools wheel
pip3 install --no-warn-script-location --no-cache-dir -r /app/Tomarket/requirements.txt
deactivate