class TabsController < ApplicationController 

	before_action :current_tab, only: [:show, :edit, :update, :destroy]

	def index
		@tabs = Tab.all
	end

	def new 
		@tab = Tab.new
	end

	def show
	end

	def edit
	end

	def create
		tab = Tab.new(tab_params)
		if tab.save
			redirect_to tab
		else
			render :new
		end
	end

	def update
		if @tab.update(tab_params)
			redirect_to @tab
		else
			render :edit
		end
	end

	def destroy
		@tab.delete
		redirect_to tabs_path
	end

	private

	def current_tab 
		@tab = Tab.find(params[:id])
	end

	def tab_params
		params.require(:tab).permit(:name)
	end
	

end
