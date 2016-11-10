class PetsController <ApplicationController

	before_action :current_pet, only: [:show, :edit, :update, :destroy]

	def index
		@pets = Pet.all
	end

	def new
		@pet = Pet.new
	end

	def show
	end

	def edit
	end

	def create
		pet = Pet.new(pet_params)
		if pet.save
			redirect_to pet
		else
			render :new
		end
	end

	def update
		if @pet.update(pet_params)
			redirect_to @pet
		else
			render :edit
		end
	end

	def destroy
		@pet.destroy
		redirect_to pets_path
	end

	private 

	def current_pet
		@pet = Pet.find(params[:id])
	end

	def pet_params
		params.require(:pet).permit(:name)
	end


end