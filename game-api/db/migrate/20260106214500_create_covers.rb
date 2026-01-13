class CreateCovers < ActiveRecord::Migration[8.1]
  def change
    create_table "game.covers" do |t|
      t.boolean :boolean
      t.integer :height
      t.string :image_id
      t.string :url
      t.integer :width
      t.boolean :animated
      t.uuid :checksum
      t.timestamps
    end
  end
end
