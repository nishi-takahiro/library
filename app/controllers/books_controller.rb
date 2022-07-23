class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book, notice: 'Book was succcessfully created.'
    else
      render 'new'
  end
end

  def new
    @book = Book.new
   end

  def edit
  end

  def show
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :description)
  end
  
end