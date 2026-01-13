class CreateSearches < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.searches' do |t|
      t.references :game, null: false, foreign_key: { to_table: 'game.games' }
      t.references :collection, null: false, foreign_key: { to_table: 'game.collections' }
      t.references :theme , null: false, foreign_key: { to_table: 'game.themes' }
      t.string :alternative_name
      t.datetime :published_at
      t.string :name
      t.string :description
      t.timestamps
    end
  end
end
