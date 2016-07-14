RailsAdmin.config do |config|
  config.authenticate_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == 'admin' && password == 'secret'
    end
  end

  # config.current_user do
  #   user = User.find(session[:user_id])
  #   if user
  #     user
  #   else
  #     flash[:danger] = "You need to login to access"
  #     redirect_to root_path
  #   end
  # end

  # config.authorize_with do
  #   redirect_to root_path unless current_user.try(:admin?)
  # end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
  end
end
