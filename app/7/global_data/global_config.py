from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(env_file=".env", env_ignore_empty=True)

    API_ID: int 
    API_HASH: str 

    LOGIN_SLEEP: list[int] = [60, 360]
    MINI_SLEEP: list[int] = [5, 15]
    BIG_SLEEP: list[int] = [10800, 18000]

    BOT_MOOD_SEQUENTIAL: bool= False
    ACCOUNTS_MOOD_SEQUENTIAL: bool= True



    ACTIVE_BOTS: dict[str, dict] = {
        "blum": {"Active": False, "REF_ID": "ref_opNBpxSjqs"},
        "catsgang": {"Active": False, "REF_ID": "MMhqaWaEsUHFywkvM5hTQ"},
        "catsvsdogs": {"Active": True, "REF_ID": "6652055484"},
        "cexio": {"Active": True, "REF_ID": "1726243655151109"},
        "goats": {"Active": True, "REF_ID": "bc4414ff-a92f-4bee-93a7-4270ecf89816"},
        "major": {"Active": False, "REF_ID": "6652055484"},
        "notpixel": {"Active": True, "REF_ID": "f6652055484_s4"},
        "tomarket": {"Active": False, "REF_ID": "0001pXr6"}
    }
    


global_settings = Settings()