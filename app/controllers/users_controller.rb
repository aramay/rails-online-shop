class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    p @user
    if @user.save
      p @user
      redirect_to root_path
    else
      p @user
      redirect_to new_user_path
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
