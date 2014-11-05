class CreateGameData < ActiveRecord::Migration
  def change
    create_table :game_data do |t|

      t.timestamps
    end
  end
end
