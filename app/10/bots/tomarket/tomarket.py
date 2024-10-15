import sys
import asyncio
from random import randint
from typing import Any
from better_proxy import Proxy


from bot.config import settings
from scripts.accounts import Accounts
from scripts.registrator import get_tg_client
from bot.tapper import run_tapper
from scripts.logger import logger

def get_proxy(raw_proxy: str) -> Proxy:
    return Proxy.from_str(proxy=raw_proxy).as_url if raw_proxy else None

async def main():
    
    accounts = await Accounts().ready_accounts()

    tasks = []
    for account in accounts:
        session_name, user_agent, raw_proxy = account.values()
        tg_client = await get_tg_client(session_name=session_name, proxy=raw_proxy)
        proxy = get_proxy(raw_proxy=raw_proxy)
        tasks.append(asyncio.create_task(run_tapper(tg_client=tg_client, user_agent=user_agent, proxy=proxy)))
        if settings.ACCOUNTS_MOOD_SEQUENTIAL:
            await asyncio.sleep(delay=randint(*settings.LOGIN_SLEEP))

    await asyncio.gather(*tasks)


if __name__ == '__main__':
    try:
        asyncio.run(main())
    except KeyboardInterrupt:
        logger.warning(f"<red>Bot stopped by user...</red>")
        sys.exit(2)