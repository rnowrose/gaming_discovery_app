class CreatePopularityPrimitives < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.popularity_primitives' do |t|
      t.uuid :checksum
      t.references :popularity_type, null: false, foreign_key: { to_table: 'game.popularity_types' }
      t.decimal :value, precision: 15, scale: 6
      t.references :game, null: false, foreign_key: { to_table: 'game.games' }
      t.references :external_popularity_source, null: false, foreign_key: { to_table: 'game.external_game_sources' }
      t.datetime :calculated_at
      t.timestamps
    end
  end
end
