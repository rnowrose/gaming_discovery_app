import json
from datetime import date
from typing import List, Optional

import pandas as pd
from config.igdb import get_csv_data
from pydantic import BaseModel


class Game(BaseModel):
    id: int
    name: Optional[str]
    summary: Optional[str]
    first_release_date: Optional[date]
    aggregated_rating: Optional[float]
    aggregated_rating_count: Optional[int]
    rating: Optional[float]
    rating_count: Optional[int]
    hypes: Optional[int]
    checksum: Optional[str]
    slug: Optional[str]
    storyline: Optional[str]
    version_title: Optional[str]
    total_rating: Optional[float]
    total_rating_count: Optional[int]
    parent_game_id: Optional[int]
    cover_id: Optional[int]
    game_status_id: Optional[int]
    dlc_id: Optional[int]
    expansion_id: Optional[int]
    bundle_id: Optional[int]
    remake_id: Optional[int]
    remaster_id: Optional[int]
    similar_game_id: Optional[int]
    standalone_expansion_id: Optional[int]
    version_parent_id: Optional[int]

    def fetch_game_data(self) -> List['Game']:
        game_data = json.loads(get_csv_data('games'))
        games_csv = pd.read_csv(game_data['s3_url'])
        games_csv = games_csv.fillna('')
        games = []
        for _, row in games_csv.iterrows():
            game = Game(
                id=int(row['id']) if row['id'] else None,
                name=row.get('name'),
                summary=row.get('summary'),
                first_release_date=pd.to_datetime(row.get('first_release_date')).date() if row.get('first_release_date') else None,
                aggregated_rating=float(row.get('aggregated_rating')) if row.get('aggregated_rating') not in [None, ''] else None,
                aggregated_rating_count=int(row.get('aggregated_rating_count')) if row.get('aggregated_rating_count') not in [None, ''] else None,
                rating=float(row.get('rating')) if row.get('rating') not in [None, ''] else None,
                rating_count=int(row.get('rating_count')) if row.get('rating_count') not in [None, ''] else None,
                hypes=int(row.get('hypes')) if row.get('hypes') not in [None, ''] else None,
                checksum=row.get('checksum'),
                slug=row.get('slug'),
                storyline=row.get('storyline'),
                version_title=row.get('version_title'),
                total_rating=float(row.get('total_rating')) if row.get('total_rating') not in [None, ''] else None,
                total_rating_count=int(row.get('total_rating_count')) if row.get('total_rating_count') not in [None, ''] else None,
                parent_game_id=int(row.get('parent_game_id')) if row.get('parent_game_id') not in [None, ''] else None,
                cover_id=int(row.get('cover_id')) if row.get('cover_id') not in [None, ''] else None,
                game_status_id=int(row.get('game_status_id')) if row.get('game_status_id') not in [None, ''] else None,
                dlc_id=int(row.get('dlc_id')) if row.get('dlc_id') not in [None, ''] else None,
                expansion_id=int(row.get('expansion_id')) if row.get('expansion_id') not in [None, ''] else None,
                bundle_id=int(row.get('bundle_id')) if row.get('bundle_id') not in [None, ''] else None,
                remake_id=int(row.get('remake_id')) if row.get('remake_id') not in [None, ''] else None,
                remaster_id=int(row.get('remaster_id')) if row.get('remaster_id') not in [None, ''] else None,
                similar_game_id=int(row.get('similar_game_id')) if row.get('similar_game_id') not in [None, ''] else None,
                standalone_expansion_id=int(row.get('standalone_expansion_id')) if row.get('standalone_expansion_id') not in [None, ''] else None,
                version_parent_id=int(row.get('version_parent_id')) if row.get('version_parent_id') not in [None, ''] else None,
            )
            games.append(game)
        return games


