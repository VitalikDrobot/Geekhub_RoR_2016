class UsersController < ApplicationController
	def new
		
	end
	def create
		@user = User.new(user_params)
		@user.save

		redirect_to @user
	end
	def show
		
	end
	def edit
		
	end
	def delete
		
	end

	private
  	def user_params
    	params.require(:user).permit(:title)
  	end
end
