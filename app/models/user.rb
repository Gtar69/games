class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable,
         :omniauth_providers => [:facebook]

  has_many :game_datas
  has_many :products, :through => :game_datas

  def admin?
    is_admin
  end

  def add_game_to_player(product)
    products << product
  end


end
