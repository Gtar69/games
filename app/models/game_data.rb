class GameData < ActiveRecord::Base
  mount_uploader :player_game_data, PlayerGameDataUploader
  belongs_to :user
  belongs_to :product
end
