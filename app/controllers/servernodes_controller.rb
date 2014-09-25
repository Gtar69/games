class ServernodesController < ApplicationController

  #before_action :authenticate_user!
  #before_action :admin_required
  skip_before_filter :verify_authenticity_token, :only => [:create, :update]

  def index
    @servernodes = Servernode.all
  end

  def new
    @servernode = Servernode.new
  end

  def create
    #puts "Begin request test"
    #puts "ip is #{request.remote_ip}"
    @servernode = Servernode.create(:name => params[:servernode][:name],
      :status => params[:servernode][:status])
    @servernode.ip_address = request.remote_ip
    if @servernode.save
      render :nothing => true
    else
      render :new
    end
  end

  def edit
    @servernode = Servernode.find(params[:id])
  end

  def update
    @servernode = Servernode.find(params[:id])
    if @servernode.update(:name=>params[:servernode][:name],:status =>params[:servernode][:status] )
      render :nothing => true
    else
      render :edit
    end
  end
end
