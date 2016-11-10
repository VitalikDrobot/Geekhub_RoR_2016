class PhonesController < ApplicationController
	before_action :current_phone, only: [:show, :edit, :update, :destroy]

	def index
		@phones = Phone.all
	end

	def new
		@phone = Phone.new
	end

	def show
	end

	def edit
	end

	def create
		phone = Phone.new(phone_params)
		if phone.save
			redirect_to phone
		else
			render :new
		end

	end

	def update
		if @phone.update(phone_params)
			redirect_to @phone
		else
			render :edit
		end
	end

	def destroy
		@phone.delete
		redirect_to phones_path
	end

	private

	def current_phone
		@phone = Phone.find(params[:id])	
	end

	def phone_params
		params.require(:phone).permit(:name)
	end
end
