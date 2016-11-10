class PlayersController < ApplicationController

	before_action :current_player, only: [:show, :edit, :update, :destroy]

	def index
		@players = Player.all 
	end

	def new
		@player = Player.new
	end

	def show
	end

	def edit
	end

	def create
		player = Player.new(player_params)
		if player.save
			redirect_to player
		else
			render :new
		end
	end

	def update
		if @player.update(player_params)
			redirect_to @player
		else
			render :edit
		end
	end

	def destroy
		@player.delete
		redirect_to players_path
	end
	
	private

	def current_player
		@player = Player.find(params[:id])
	end

	def player_params
		params.require(:player).permit(:name)
	end

end