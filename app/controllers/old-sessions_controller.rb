# class SessionsController < ApplicationController
#   def new
#   end

#   def create
#     @user = User.find_by(email: params["Email"])
#     password = params["Password"]
#       # if @user.admin && @user.authenticate(password)
#       #   session[:user_id] = @user.id
#       #   redirect_to '/admin'
#       if @user && @user.authenticate(password)
#         session[:user_id] = @user.id
#         flash[:success] = "You're logged in!"
#         redirect_to root_path
#       else
#         redirect_to root_path
#       end
#   end

#   def destroy
#     session.delete(:user_id)
#     redirect_to root_path
#   end
# end
