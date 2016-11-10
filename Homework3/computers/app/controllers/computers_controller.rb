class ComputersController < ApplicationController

	before_action :current_computer, only: [:show, :edit, :update, :destroy]

	def index
		@computers = Computer.all
	end

	def new 
		@computer = Computer.new
	end

	def show
	end

	def edit
	end

	def create
		computer = Computer.new(computer_params)
		if computer.save
			redirect_to computer
		else
			render :new
		end
	end

	def update
		if @computer.update(computer_params)
			redirect_to @computer
		else
			render :edit
		end
	end

	def destroy
		@computer.delete
		redirect_to computers_path
	end

	private

	def current_computer
		@computer = Computer.find(params[:id])
	end

	def computer_params
		params.require(:computer).permit(:os)
	end

end
