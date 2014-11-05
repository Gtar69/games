class AddRefToGameData < ActiveRecord::Migration
  def change
    add_column :game_data, :user_id, :integer
    add_column :game_data, :product_id, :integer
  end
end
