cd /app
RUN apt-get update && apt-get install -y supervisor
npm install -r package.json
chmod +x /app/blumtod/start.sh /app/MemeFiBot/start.sh /app/Tomarket/start.sh
