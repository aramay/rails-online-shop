require 'support/auth_helper'

#features routed through products_spec controller

#RSpec.feature "Users", type: :feature, js: true do
#  context 'Admin' do
#    include AuthHelper
#    before(:each) do
#      @user = User.create("email":"tom@tom.com", "password":"tomtomtom", "admin": true)
#      sign_in @user
#    it "creates a new product" do
#      visit "/admin"
#        expect(page).to have_content("Site Administration")
#    end
#end

#class Tester
#RSpec.feature "Users", type: :feature, js: true do
#  include Devise::TestHelpers
#
#  let!(:user) { User.create("email":"tom@tom.com", "password":"tomtomtom", "admin": true) }
#   describe "#index" do
#    it "admin can log into the admin page with DEVISE" do
#      @request.env["devise.mapping"] = Devise.mappings[:user]
#      sign_in :user
#      visit "/admin"
#
#      expect(page).to have_content("Site Administration")
#
#    end
#   end
#end
#
#end
