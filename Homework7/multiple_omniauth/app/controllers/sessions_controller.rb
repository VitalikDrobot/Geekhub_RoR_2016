class SessionsController < ApplicationController

	def new
	end

	def create
		binding.pry
	end

	def destroy
		sessions[:user_id] = nil
		redirect_to root_path
	end

	private

	def auth_params
		request.env['omniauth.auth']
	end
	
end
