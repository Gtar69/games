class ProductsController < ApplicationController
  before_action :authenticate_user!, :only => :play_game
  require "rest-client"

  def index
    @products = Product.order("id DESC")
  end

  def show
    @product = Product.find(params[:id])
  end

  # only logged user can play the game
  # we can pass ip of node server to build up real web socket
  def play_game
    # find available node first, then

    @product = Product.find(params[:id])
    current_user.add_game_to_player(@product)
    # pass data to bounding server

    #{}%x(adb connect #{node.ip})
    #{}%x(adb pull data/data/com.rovio.angrybirds/ public/uploads/game_data)
    #{}%x(adb vm start angrybirds.apk)




    #s = Servernode.available.first
    #if(s)
    # id = s.id
     # s.user_id = current_user.id
     # s.status = "Ready"
      #s.save!
      #@ip = s.ip_address
      #render :nothing => :true
    #else
      #render :nothing => :true
    #end

    #p = {:servernode => {:name=>s.name,:status => "Ready"}}
    #RestClient.put("http://localhost:3001/submitforms/#{id}",p)
    #user id registration
    #s.user_id = current_user.id
    #s.save!

  end

end
