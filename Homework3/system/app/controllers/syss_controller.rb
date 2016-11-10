class SyssController < ApplicationController

	before_action :current_sys, only: [:show, :edit, :update, :destroy]

	def index
		@sies = Ss.all
	end

	def new 
		@sys = Sys.new
	end

	def show
	end

	def edit
	end

	def create
		sys = Sys.new(sys_params)
		if sys.save
			redirect_to sys
		else
			render :new
		end
	end

end
