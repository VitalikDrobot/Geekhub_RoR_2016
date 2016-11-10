class ImagesController < ApplicationController

	before_action :current_image, only: [:show, :edit, :update, :destroy]

	def index
		@images = Image.all
	end

	def new 
		@image = Image.new
	end

	def show
	end

	def edit
	end

	def create
		image = Image.new(image_params)
		if image.save
			redirect_to image
		else
			render :new
		end
	end

	def update
		if @image.update(image_params)
			redirect_to @image
		else
			render :edit
		end

	end

	def destroy
		@image.delete
		redirect_to images_path

	end

	private

	def current_image 
		@image = Image.find(params[:id])
	end

	def image_params
		params.require(:image).permit(:size)
	end

end
