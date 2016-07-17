require 'rails_helper'

RSpec.feature "Products", type: :feature, js: true do
  let!(:product) { Product.create(name: "Charles", description: "A hampster", price: 0, quantity: 1, image: "http://www.kendavis.com/wordpress/wp-content/uploads/2013/08/Hamster.jpg") }
  describe "#index" do
    it "should have a name, price, description, quantity, image" do
      visit root_path
      expect(page).to have_content(product.name)
      expect(page).to have_content(product.price)
      expect(page).to have_content(product.description)
      expect(page).to have_content(product.quantity)
    end
  end

  describe "#show" do
    it "should the correct name, price, description, image" do
      visit product_path(product)
      expect(page).to have_content(product.name)
      expect(page).to have_content(product.price)
      expect(page).to have_content(product.description)
      expect(page).to have_content(product.quantity)
    end
  end

  describe "#admin w/read, create, update and delete" do
    before(:each) do
      @category = Category.create("name":"Cats")
      @product = Product.new("name":"James","description":"Not a hampster.","image":"http://www.kongsbergvet.no/uploads/6/1/3/4/6134802/299713301.jpg","price":20.99,"quantity":2)
      @admin = User.create("email":"tim@tim.com", "password":"timtimtim", "admin": true)
      visit 'users/sign_in'
      fill_in 'user[email]', with: @admin.email
      fill_in 'user[password]', with: @admin.password
      click_button 'Log in'
    end

    it "should log the admin in" do
      visit "/admin"
      expect(page).to have_content("Site Administration")
    end

    it "should access the products rotue" do
      visit "/admin/product"
      expect(page).to have_content("List of Products")
    end

    it "should access the products rotue" do
      visit "/admin/product/new"
      expect(page).to have_content("New Product")
    end

    it "should create a new product" do
      visit "/admin/product/new"

      fill_in 'product[name]', with: @product.name
      fill_in 'product[description]', with: @product.description
      fill_in 'product[image]', with: @product.image
      fill_in 'product[price]', with: @product.price
      fill_in 'product[quantity]', with: @product.quantity
      click_button 'Save'

      expect(Product.find(1).name).to eq "Charles"

    end

    it "should edit an existing product" do
      visit "/admin/product/1/edit"
      fill_in 'product[description]', with: "ham"
      click_button 'Save'

      expect(Product.find(1).description).to eq "ham"
    end

    it "should delete an existing product" do
      visit "/admin/product"
      click_link('', :href => '/admin/product/1/delete')
      click_button "Yes, I'm sure"
      expect(Product.all.count).to eq 0
    end


  end

end
