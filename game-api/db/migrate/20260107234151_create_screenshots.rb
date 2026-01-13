class CreateScreenshots < ActiveRecord::Migration[8.1]
  def change
    create_table "game.screenshots" do |t|
      t.boolean :animated
      t.integer :height
      t.string :image_id
      t.integer :width
      t.references :game, foreign_key: { to_table: "game.games" }
      t.uuid :checksum
      t.boolean :alpha_channel
      t.timestamps
    end
  end
end
