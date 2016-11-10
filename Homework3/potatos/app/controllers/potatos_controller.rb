class PotatosController < ApplicationController
	before_action :current_potato, only: [:show, :edit, :update, :destroy]

	def index
		@potatos = Potato.all
	end

	def new
		@potato = Potato.new
	end

	def show
	end

	def edit
	end

	def create
		potato = Potato.new(potato_params)
		if potato.save
			redirect_to potato
		else
			render :new
		end
	end

	def update
		if @potato.update(potato_params)
			redirect_to @potato
		else
			render :edit
		end

	end

	def destroy
		@potato.delete
		redirect_to potatos_path
	
	end

	private 

	def current_potato 
		@potato = Potato.find(params[:id])
	end

	def potato_params
		params.require(:potato).permit(:mas)
	end


end
