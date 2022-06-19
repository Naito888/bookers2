class UsersController < ApplicationController
  
  def index
    @users = User.all
    @book = Book.new
    @user = current_user
    #@user = User.find(current_user.id)
  end
  
  def show
    @user = User.find(params[:id])
    @books = @user.book
    @book = Book.new
  end
    # @userに紐付いたbooksのみを表示
    # show内（ユーザ詳細）に投稿を置く場合、newが必要

  def edit
    @user = User.find(params[:id])
    redirect_to user_path(current_user.id)
    if @user.id != current_user.id
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :profile_image, :introduction)
  end
  def book_params
    params.require(:book).permit(:title,:body)
  end
  
end
