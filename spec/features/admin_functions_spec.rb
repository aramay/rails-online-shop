require 'support/auth_helper'
context 'Admin' do
  include AuthHelper
  before(:each) do
    authenticate
  end
  it "creates a new product" do
    visit "/admin"
      expect(page).to have_content("Site Administration")
  end
end
