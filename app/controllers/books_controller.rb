class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def index
    @book = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
end
