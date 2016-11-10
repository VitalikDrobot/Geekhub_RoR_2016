class TeasController <ApplicationController

	before_action :current_tea, only: [:show, :edit, :update, :destroy]

	def index
		@teas = Tea.all 
	end

	def new
		@tea = Tea.new
	end

	def show
	end

	def edit
	end

	def create
		tea = Tea.new(tea_params)
		if tea.save
			redirect_to tea
		else
			render :new
		end
	end

	def update
		if @tea.save(tea_params)
			redirect_to @tea
		else
			render :edit
		end
	end

	def destroy
		@tea.delete
		redirect_to teas_path
	end

	private

	def current_tea
		@tea = Tea.find(params[:id])
	end

	def tea_params
		params.require(:tea).permit(:color)
	end

end
