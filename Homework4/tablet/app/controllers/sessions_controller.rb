class SessionsController < ApplicationController

	def new
	end
	
	def create
		user = User.find_by_email(params[:email])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to tabs_path
		else
			redirect_to 'sign_in'
		end

	end

	def destroy
		session[:user_id] = nil
		redirect_to tabs_path
	end

end