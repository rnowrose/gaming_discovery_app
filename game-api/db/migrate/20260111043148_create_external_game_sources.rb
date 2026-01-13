class CreateExternalGameSources < ActiveRecord::Migration[8.1]
  def change
    create_table 'game.external_game_sources' do |t|
      t.string :name
      t.uuid :checksum
      t.timestamps
    end
  end
end
