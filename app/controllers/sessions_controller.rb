class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by(email: params[:email])
    password = params[:password]
      if @user && @user.authenticate(password)
        session[:user_id] = @user.id
        redirect_to 'google.com'
      else
        redirect_to 'bing.com'
      end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
