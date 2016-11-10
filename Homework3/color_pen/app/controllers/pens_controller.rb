class PensController < ApplicationController 

	before_action :current_pen, only: [:show, :edit, :update, :destroy]

	def index
		@pens = Pen.all
	end

	def new
		@pen = Pen.new
	end

	def show
	end

	def edit
	end

	def create
		pen = Pen.new(pen_params)
		if pen.save
			redirect_to pen 
		else
			render :new
		end
	end

	def update
		if @pen.update(pen_params)
			redirect_to :edit
		else
			render :edit
		end
	end

	def destroy
		@pen.delete
		redirect_to pens_path
	end

	private

	def current_pen 
		@pen = Pen.find(params[:id])
	end

	def pen_params
		params.require(:pen).permit(:color)
	end

end
