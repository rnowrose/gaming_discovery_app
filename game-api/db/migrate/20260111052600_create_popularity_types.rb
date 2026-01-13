class CreatePopularityTypes < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.popularity_types' do |t|
      t.string :name
      t.uuid :checksum
      t.references :external_popularity_source, null: false, foreign_key: { to_table: 'game.external_game_sources' }
      t.timestamps
    end
  end
end
