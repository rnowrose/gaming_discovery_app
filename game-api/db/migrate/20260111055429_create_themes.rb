class CreateThemes < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.themes' do |t|
      t.string :name
      t.string :slug
      t.uuid :checksum
      t.timestamps
    end
  end
end
