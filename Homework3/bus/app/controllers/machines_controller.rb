class MachinesController < ApplicationController

	before_action :current_machine, only: [:show, :edit, :update, :destroy]

	def index
		@machines = Machine.all
	end
	def new
		@machine = Machine.new
	end

	def show
	end

	def edit
	end

	def create
		machine = Machine.new(machine_params)
		if machine.save
			redirect_to machine
		else
			render :new
		end
	end

	def update
		if @machine.update(machine_params)
			redirect_to @machine
		else
			render :edit
		end
	end

	def destroy
		@machine.delete
		redirect_to machines_path
	end

	private

	def current_machine
		@machine = Machine.find(params[:id])
	end

	def machine_params
		params.require(:machine).permit(:size)
	end

end
