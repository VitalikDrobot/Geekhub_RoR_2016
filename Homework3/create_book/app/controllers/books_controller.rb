class BooksController < ApplicationController
  
  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(params[:id])

    @book.save
    redirect_to @book
  end

  def edit
  end

  def destroy
  end

  def update
  end
end
