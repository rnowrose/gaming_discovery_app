import requests
import os
from dotenv import load_dotenv

load_dotenv()

CLIENT_ID = os.getenv("CLIENT_ID")
CLIENT_SECRET = os.getenv("CLIENT_SECRET")
GRANT_TYPE = os.getenv("GRANT_TYPE")

def get_igdb_token():
    url = "https://id.twitch.tv/oauth2/token"
    params = {
        "client_id": CLIENT_ID,
        "client_secret": CLIENT_SECRET,
        "grant_type": GRANT_TYPE
    }
    response = requests.post(url, params=params)
    response.raise_for_status()
    data = response.json()
    return data["access_token"]

def get_csv_data(url: str) -> str:
    token = get_igdb_token()
    headers = {
        "Client-ID": CLIENT_ID,
        "Authorization": f"Bearer {token}"
    }
    response = requests.get(f'https://api.igdb.com/v4/dumps/{url}', headers=headers)
    response.raise_for_status()
    return response.text