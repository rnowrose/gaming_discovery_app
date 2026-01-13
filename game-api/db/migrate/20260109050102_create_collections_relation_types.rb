class CreateCollectionsRelationTypes < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.collections_relation_types' do |t|
      t.uuid :checksum
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
