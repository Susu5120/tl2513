[![Static Badge](https://img.shields.io/badge/Telegram-Channel-Link?style=for-the-badge&logo=Telegram&logoColor=white&logoSize=auto&color=blue)](https://t.me/+jJhUfsfFCn4zZDk0)      [![Static Badge](https://img.shields.io/badge/Telegram-Bot%20Link-Link?style=for-the-badge&logo=Telegram&logoColor=white&logoSize=auto&color=blue)](https://t.me/Tomarket_ai_bot/app?startapp=00005UEJ)

## Рекомендация перед использованием

# 🔥🔥 Используйте PYTHON версии 3.10 🔥🔥

> 🇪🇳 README in english available [here](README)

## Функционал  
|                               Функционал                               | Поддерживается |
|:----------------------------------------------------------------------:|:--------------:|
|                            Многопоточность                             |       ✅        |
|                        Привязка прокси к сессии                        |       ✅        |
|                   Авто Реферальство ваших аккаунтов                    |       ✅        |
|                      Автоматическое выполнение задач                   |       ✅        |
|                      Поддержка pyrogram .session                       |       ✅        |
|                             Авто фарминг                               |       ✅        |
|                   Автоматическое выполнение квестов                    |       ✅        |
|                      Авто Ежедневная Награда                           |       ✅        |
|                       Авто Получение Звезд                             |       ✅        |
|                       Авто Получение Комбо                             |       ✅        |
|       Авто Прокачка уровня        |       ✅        |

## [Настройки](https://github.com/GravelFire/Tomarket/blob/main/.env-example/)
|           Настройка           |                                       Описание                                        |
|:-----------------------------:|:-------------------------------------------------------------------------------------:|
|         **API_ID**            |        Ваш Telegram API ID (целое число)                                              |
|         **API_HASH**          |        Ваш Telegram API Hash (строка)                                                 |
|         **REF_ID**            |        Ваш реферальный ID после startapp=                           |
|         **POINTS_COUNT**      |        Количество поинтов за игру (например, [450, 600])      |         
|      **FAKE_USERAGENT**       |        Использовать поддельный user agent для сессий (True / False)                   |
|      **AUTO_PLAY_GAME**       |        Автоматически играть в игры (True / False)                                     |
|         **AUTO_TASK**         |        Автоматически выполнять задания (True / False)                                 |
|    **AUTO_DAILY_REWARD**      |        Автоматически получать ежедневные награды (True / False)                       |
|    **AUTO_CLAIM_STARS**      |        Автоматически получать звездные награды (True / False)                         |
|     **AUTO_CLAIM_COMBO**      |        Автоматически получать комбо-награды (True / False)                            |
|    **AUTO_RANK_UPGRADE**    |  Автоматически прокачивать уровень при наличии звезд (True / False)  |
| **USE_RANDOM_DELAY_IN_RUN**   |        Использовать случайную задержку при запуске (True / False)                     |
|   **RANDOM_DELAY_IN_RUN**     |        Случайная задержка при запуске (например, [0, 15])                             |
|  **USE_PROXY_FROM_FILE**      |        Использовать прокси из файла `bot/config/proxies.txt` (True / False)           |

## Быстрый старт 📚

Для быстрой установки и последующего запуска - запустите файл run.bat на Windows или run.sh на Линукс

## Предварительные условия
Прежде чем начать, убедитесь, что у вас установлено следующее:
- [Python](https://www.python.org/downloads/) **версии 3.10**

## Получение API ключей
1. Перейдите на сайт [my.telegram.org](https://my.telegram.org) и войдите в систему, используя свой номер телефона.
2. Выберите **"API development tools"** и заполните форму для регистрации нового приложения.
3. Запишите `API_ID` и `API_HASH` в файле `.env`, предоставленные после регистрации вашего приложения.

## Установка
Вы можете скачать [**Репозиторий**](https://github.com/GravelFire/Tomarket) клонированием на вашу систему и установкой необходимых зависимостей:
```shell
git clone https://github.com/GravelFire/Tomarket.git
cd Tomarket
```

Затем для автоматической установки введите:

Windows:
```shell
run.bat
```

Linux:
```shell
run.sh
```

# Linux ручная установка
```shell
python3 -m venv venv
source venv/bin/activate
pip3 install -r requirements.txt
cp .env-example .env
nano .env  # Здесь вы обязательно должны указать ваши API_ID и API_HASH , остальное берется по умолчанию
python3 main.py
```

Также для быстрого запуска вы можете использовать аргументы, например:
```shell
~/Tomarket >>> python3 main.py --action (1/2)
# Или
~/Tomarket >>> python3 main.py -a (1/2)

# 1 - Запускает кликер
# 2 - Создает сессию
```


# Windows ручная установка
```shell
python -m venv venv
venv\Scripts\activate
pip install -r requirements.txt
copy .env-example .env
# Указываете ваши API_ID и API_HASH, остальное берется по умолчанию
python main.py
```

Также для быстрого запуска вы можете использовать аргументы, например:
```shell
~/Tomarket >>> python main.py --action (1/2)
# Или
~/Tomarket >>> python main.py -a (1/2)

# 1 - Запускает кликер
# 2 - Создает сессию
```
