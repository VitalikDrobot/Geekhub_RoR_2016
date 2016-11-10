class MusicsController < ApplicationController
	before_action :current_music, only: [:show, :edit, :update, :destroy]

	def index
		@musics = Music.all
	end

	def show
	end

	def new
		@music = Music.new
	end
	
	def create
		music = Music.new(music_params)
		if music.save
			redirect_to music
		else
			render :new
		end

	end

	def edit
	end

	def update
		if @music.update(music_params)
			redirect_to @music
		else
			render :edit
		end

	end

	def destroy
		@music.delete
		redirect_to musics_path(params)
	end

	private

	def current_music
		@music = Music.find(params[:id])
	end

	def music_params
		params.require(:music).permit(:name)
	end

end