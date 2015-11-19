class SessionsController <ApplicationController
 before_action :authenticate_user!, only: []

def new
end

def create
@user = User.find_by(email: params[:session][:email])
if @user && @user.authenticate(params[:session][:password])
	session[:user_id] = @user.id
	redirect_to root_path
else
	redirect_to login_path
	flash[:warning] = "Wrong Username or password"

end
end

 def destroy
    session[:user_id] = nil
    redirect_to root_path
  end


end