class HatsController < ApplicationController

	before_action :current_hat, only: [:show, :edit, :update, :destroy]

	def index
		@hats = Hat.all
	end

	def new
		@hat = Hat.new
	end

	def show
	end

	def edit
	end

	def create
		hat = Hat.new(hat_params)
		if hat.save 
			redirect_to hat
		else
			render :new
		end
	end

	def update
		if @hat.save(hat_params)
			redirect_to @hat
		else
			render :edit
		end
	end

	def destroy
		@hat.delete
		redirect_to hats_path
	end

	private

	def current_hat
		@hat = Hat.find(params[:id])
	end

	def hat_params
		params.require(:hat).permit(:size)
	end

end
