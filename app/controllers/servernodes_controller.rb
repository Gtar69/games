class ServernodesController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required

  def index
    @servernodes = Servernode.all
  end

  def new
    @servernode = Servernode.new
  end

  def create
    @servernode = Servernode.create(:name => params[:servernode][:name],
      :status => params[:servernode][:status])
    if @servernode.save
      redirect_to servernodes_path
    else
      render :new
    end
  end

end
