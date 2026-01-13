from fastapi import FastAPI
from router
from data.game import fetch_game_data

games = fetch_game_data()
print(games)

app = FastAPI()

@app.get("/")
def read_root():
    return {"Hello": "World"}