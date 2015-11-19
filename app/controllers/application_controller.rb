class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def authenticate_user!
  	if user_logged_in?
  		redirect_to root_path
  	else
  		redirect_to login_path
  		flash[:warning] = "please login"
  	end
  end

end
