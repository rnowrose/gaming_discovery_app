class CreateCollectionsRelations < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.collections_relations' do |t|
      t.uuid :checksum
      t.references :child_collection, null: false, foreign_key: { to_table: 'game.collections' }
      t.references :parent_collection, null: false, foreign_key: { to_table: 'game.collections' }
      t.references :type, null: false, foreign_key: { to_table: 'game.collections_relation_types' }
      t.timestamps
    end
  end
end
