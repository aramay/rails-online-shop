require 'rails_helper'

RSpec.feature "Category", type: :feature, js: true do
  let!(:category) { Category.create(name: "Cats") }
  describe "#index" do
    it "should have a name" do
      visit root_path
      expect(page).to have_content(category.name)
    end
  end

  describe "#admin w/read, create, update and delete" do
    before do
      @category = Category.create("name":"Cats")
      @admin = User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)
      visit 'users/sign_in'
      fill_in 'user[email]', with: @admin.email
      fill_in 'user[password]', with: @admin.password
      click_button 'Log in'
      visit '/admin'
    end

    it "should access the categories route" do
      visit "/admin/category"
      expect(page).to have_content("List of Categories")
    end

    it "should access the categories route" do
      visit "/admin/category/new"
      expect(page).to have_content("New Category")
    end

    it "should create a new Category" do
      visit "/admin/category/new"

      fill_in 'category[name]', with: @category.name

      click_button 'Save'

      expect(Category.find(1).name).to eq "Cats"

    end

    it "should edit an existing Category" do
      visit "/admin/category/1/edit"
      fill_in 'category[name]', with: "Cats"
      click_button 'Save'

      expect(Category.find(1).name).to eq "Cats"
    end

    it "should delete an existing Category" do
      visit "/admin/category"
      click_link('', :href => '/admin/category/1/delete')
      click_button "Yes, I'm sure"
      expect(Category.all.count).to eq 1
    end

  end
end

