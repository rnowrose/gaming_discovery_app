class CreateGames < ActiveRecord::Migration[8.1]
  def change
    create_table "game.games" do |t|
      t.string :name
      t.text :summary
      t.date :first_release_date
      t.float :aggregated_rating
      t.integer :aggregated_rating_count
      t.float :rating
      t.integer :rating_count
      t.integer :hypes
      t.uuid :checksum
      t.string :slug
      t.text :storyline
      t.string :version_title
      t.float :total_rating
      t.integer :total_rating_count
      t.references :parent_game, foreign_key: { to_table: "game.games" }
      t.references :cover, foreign_key: { to_table: "game.covers" }
      t.references :game_status, foreign_key: { to_table: "game.game_statuses" }
      t.references :dlc , foreign_key: { to_table: "game.games" }
      t.references :expansion , foreign_key: { to_table: "game.games" }
      t.references :bundle , foreign_key: { to_table: "game.games" }
      t.references :remake , foreign_key: { to_table: "game.games" }
      t.references :remaster , foreign_key: { to_table: "game.games" }
      t.references :similar_game , foreign_key: { to_table: "game.games" }
      t.references :standalone_expansion , foreign_key: { to_table: "game.games" }
      t.references :version_parent , foreign_key: { to_table: "game.games" }
      t.timestamps
    end
  end
end
