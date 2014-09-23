class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception
  # protect_from_forgery :null_session
  # skip_before_filter :verify_authenticity_token
  #  skip_before_filter :verify_authenticity_token, :only => :servernode

  def admin_required
    current_user.admin?
  end
end
