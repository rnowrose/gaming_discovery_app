class CreateCollections < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.collections' do |t|
      t.uuid :checksum
      t.string :name
      t.string :slug
      t.references :game , null: false, foreign_key: { to_table: 'game.games' }
      t.references :type, null: false, foreign_key: { to_table: 'game.collection_types' }
      t.timestamps
    end
  end
end
