class ProductsController < ApplicationController
  before_action :authenticate_user!, :only => :play_game

  def index
    @products = Product.order("id DESC")
  end

  def show
    @product = Product.find(params[:id])
  end

  # only logged user can play the game
  def play_game
    # transist states
    s = Servernode.available.random.first
    s.status = "Ready"
    # user id registration / session better?
    s.user_id = current_user.id
    s.save
    render :nothing => :true
  end

end
