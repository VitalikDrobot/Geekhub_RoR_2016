class ArticlesController < ApplicationController

	before_action :current_article, only: [:show, :edit, :update, :destroy]

	def index
		@articles = Article.all
	end

	def new 
		@article = Article.new
	end

	def show
	end

	def edit
	end

	def create
		article = Article.new(article_params)
		if article.save
			redirect_to article
		else
			render :new
		end
	end

	def update
		@article.update(article_params)
		redirect_to @article
	end

	def destroy
		@article.delete
		redirect_to articles_path
	end

	private

	def current_article
		@article = Article.find(params[:id])
	end

	def article_params
		params.require(:article).permit(:title, :text)
	end
	
end
