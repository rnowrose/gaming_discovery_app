class CreateGamesGenresJoinTable < ActiveRecord::Migration[8.1]
  def change
    create_join_table "game.games", "game.genres" do |t|
      t.index :game_id, name: 'index_games_genres_on_game_id'
      t.index :genre_id, name: 'index_games_genres_on_genre_id'
    end
  end
end
