class UsersController < ApplicationController
  def index
    @users = User.all
    @book = Book.new
  end

  def show
    @user = User.find(params[:id])
    @book = Book.new
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
    flash[:notice] = "更新に成功しました"
    redirect_to user_path(@user)
  else
    render :edit
  end
  end

  private

  def user_params
    params.require(:user).permit(:name,:introduction,:profile_image)
  end
end
