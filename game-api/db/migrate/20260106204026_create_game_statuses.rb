class CreateGameStatuses < ActiveRecord::Migration[8.1]
  def change
    create_table "game.game_statuses" do |t|
      t.string :statuses
      t.uuid :checksum
      t.timestamps
    end
  end
end
