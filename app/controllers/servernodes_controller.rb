class ServernodesController < ApplicationController
  #protect_from_forgery with: :null_session
  #skip_before_filter :verify_authenticity_token
  skip_before_filter :verify_authenticity_token, :only => :create
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

  def edit
    @servernode = Servernode.find(params[:id])
  end

  def update
    @servernode = Servernode.find(params[:id])
    if @servernode.update(:name=>params[:servernode][:name],:status =>params[:servernode][:status] )
      redirect_to servernodes_path
    else
      render :edit
    end
  end
end
