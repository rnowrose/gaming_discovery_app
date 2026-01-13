class CreateGameTypes < ActiveRecord::Migration[8.1]
  def change
    create_table "game.game_types" do |t|
      t.string :type
      t.uuid :checksum
      t.timestamps
    end
  end
end
