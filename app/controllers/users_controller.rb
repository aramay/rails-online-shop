class UsersController < ApplicationController
  def new

  end
  def create
    @user = User.create(params[:user])
    if @user.save
      redirect root_path
    else
      redirect new_user_path
    end
  end
end
