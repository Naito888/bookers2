class UsersController < ApplicationController
  
  def index
    @users = User.all
    @user = User.find(current_user.id)
  end
  
  def new
    @book = Book.new
  end
  
  
  def show
    @user = User.find(params[:id])
    @user_books = Book.where(user_id: params[:id])
  end

  def edit
    
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
