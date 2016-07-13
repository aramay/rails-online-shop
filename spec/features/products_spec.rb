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

  # describe "#create" do
  #   it "creates a new product" do
  #     visit new_product_path
  #     fill_in 'product[name]', with: product.name
  #     fill_in 'product[description]', with: product.description
  #     fill_in 'product[price]', with: product.price
  #     fill_in 'product[quantity]', with: product.quantity
  #     fill_in 'product[image]', with: product.image
  #     click_on('Create Product')
  #     expect(page).to have_content(product.name)
  #   end
  # end

  # describe "#edit" do
  #   it "edits an existing product" do
  #     visit edit_product_path(product)
  #     fill_in 'product[name]', with: "Ted"
  #     click_on('Update Product')
  #     expect(page).to have_content("Ted")
  #   end
  # end

  # describe "#delete" do
  #   it "deletes a product" do
  #   end
  # end

  # format price potential helper method
  #("%5.2f" % (@product.price.to_f / 1000))
end
