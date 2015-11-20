class UsersController < ApplicationController
before_action :authenticate_user! only: [:new, :create]

def new 
	@user = User.new
end

def create
	@user = User.new(user_params)
		if @user.save
		flash[:notice] = "Account successfully created!"
		redirect_to login_path
	else
		render :new
		flash[:warning] = "Account not created!"
	end
end

private

def user_params
	params.require(:user).permit(:username, :email, :password, :contact, :address, :about_you, :birthday, :gender, :password_confirmation)

end

end