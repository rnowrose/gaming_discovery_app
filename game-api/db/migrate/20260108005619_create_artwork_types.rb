class CreateArtworkTypes < ActiveRecord::Migration[8.1]
  def change
    create_table "game.artwork_types" do |t|
      t.uuid :checksum
      t.string :name
      t.string :slug
      t.timestamps
    end
  end
end
