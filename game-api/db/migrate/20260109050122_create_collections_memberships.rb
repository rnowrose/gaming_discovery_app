class CreateCollectionsMemberships < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.collections_memberships' do |t|
      t.uuid :checksum
      t.references :collection, null: false, foreign_key: { to_table: 'game.collections' }
      t.references :type, null: false, foreign_key: { to_table: 'game.collections_membership_types' }
      t.references :game , null: false, foreign_key: { to_table: 'game.games' }
      t.timestamps
    end
  end
end
