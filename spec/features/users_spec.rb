require 'rails_helper'

#User.create("email":"tom@tom.com", "password":"tomtomtom", "admin": false)
## User.create("username":"Tim", "email":"tim@tim.com", "password":"timtimtim", "admin": true)
#User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)


RSpec.feature "Users", type: :feature, js: true do
  before(:each) do
    @user = User.new("email":"tom@tom.com", "password":"tomtomtom", "admin": false)
    @admin = User.new("email":"tim@tim.com", "password":"timtimtim", "admin": true)
  end

  describe "no user should get to admin" do
    it "should prohibit a non-user to /admin" do
      visit '/admin'
      expect(page).to have_content("Log In")
    end
  end
  describe "basic user can sign up" do
    it "should log in basic user" do
      @user.save
      visit 'users/sign_in'
      fill_in 'user[email]', with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'
      expect(page).to have_content("Sign Out")
    end
    it "should prohibit basic from /admin" do
      @user.save
      visit 'users/sign_in'
      fill_in 'user[email]', with: @user.email
      fill_in 'user[password]', with: @user.password
      click_button 'Log in'
      visit '/admin'
      expect(page).to have_content("Sign Out")
    end
  end
end


