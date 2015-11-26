class SessionsController <ApplicationController
 before_action :authenticate_user!, only: []

	def new
	end

	def create
		if !env["omniauth.auth"].nil?
			@user = User.from_omniauth(env["omniauth.auth"])
			session[:user_id] = @user.id
			redirect_to root_path
		else 
			if @user = User.find_by(email: params[:session][:email])
		  @user && @user.authenticate(params[:session][:password])
			session[:user_id] = @user.id
			redirect_to root_path
			else
			redirect_to login_path
			flash[:warning] = "Invalid Username or password"
	  end
	  end
	end

	def destroy
	  session[:user_id] = nil
	  redirect_to root_path
	end
end