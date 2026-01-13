class CreateGamesSchema < ActiveRecord::Migration[8.1]
  def change
    execute "CREATE SCHEMA IF NOT EXISTS game"
  end
end
