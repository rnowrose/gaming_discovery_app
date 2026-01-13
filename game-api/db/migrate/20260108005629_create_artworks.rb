class CreateArtworks < ActiveRecord::Migration[8.1]
  def change
    create_table "game.artworks" do |t|
      t.uuid :checksum
      t.references :artwork_type, foreign_key: { to_table: "game.artwork_types" }
      t.references :game, foreign_key: { to_table: "game.games" }
      t.string :image_id
      t.string :url
      t.boolean :alpha_channel
      t.integer :height
      t.integer :width
      t.boolean :animated
      t.timestamps
    end
  end
end
