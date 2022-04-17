class UsersController < ApplicationController
  def index
    @book = Book.new
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    # @books = Book.where(user_id: @user.id)
    @books = @user.book
  end

  def edit
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :profile_image)
  end
end
