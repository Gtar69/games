class AddPlayerGameDataToGamedata < ActiveRecord::Migration
  def change
    add_column :game_data, :player_game_data, :string
  end
end
