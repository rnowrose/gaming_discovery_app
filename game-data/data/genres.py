import json
import pandas as pd

from pydantic import BaseModel
from config.igdb import get_csv_data

class Genres(BaseModel):
    id: int
    name: str
    slug: str

def fetch_genre_data() -> list[Genres]:
    genre_data = json.loads(get_csv_data('genres'))
    genres_csv = pd.read_csv(genre_data['s3_url'])
    genres_csv = genres_csv.fillna('')
    
    return []