class BooksController < ApplicationController
  
  def show
    @book = Book.find(params[:id])
    @user = @book.user
  end
  
end
