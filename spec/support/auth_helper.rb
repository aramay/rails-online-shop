module AuthHelper
  def authenticate
    username = "admin"
    password = "secret"
    if page.driver.browser.respond_to?(:authorize)
      page.driver.browser.authorize(username, password)
    else
      redirect_to "/"
    end
  end
end
