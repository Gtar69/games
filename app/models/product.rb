class Product < ActiveRecord::Base

  has_many :photos
  accepts_nested_attributes_for :photos
  has_many :game_datas
  has_many :users, :through => :game_datas
  validates :title, :presence => true
  validates :description, :presence => true

  def default_photo
    photos.first
  end
end
