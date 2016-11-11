class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:email])
		if user && user.autheticate(params[:password])
			session[:user_id] = user.id
			redirect_to images_path
		else
			redirect 'log_in'
		end
	end

	def destroy
		session[:user_id] = nil
		redirect_to images_path
	end
	
end
