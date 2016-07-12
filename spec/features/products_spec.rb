require 'rails_helper'

RSpec.feature "Products", type: :feature, js: true do
  let!(:product) { Product.create(name: "Charles", description: "A hampster", price: 0, image: "http://www.kendavis.com/wordpress/wp-content/uploads/2013/08/Hamster.jpg") }
  describe "#index" do
    it "should have a name, price, description, image" do
      visit root_path
      expect(page).to have_content(product.name)
      expect(page).to have_content(product.price)
      expect(page).to have_content(product.description)
      expect(page).to have_content(product.image)
    end
  end

  describe "#show" do
    it "should the correct name, price, description, image" do
      visit product_path(product)
      expect(page).to have_content(product.name)
      expect(page).to have_content(product.price)
      expect(page).to have_content(product.description)
    end
  end

  describe "#create" do
    let(:params) {{name: "Charles", description: "A hampster", price: 0, image: "http://www.kendavis.com/wordpress/wp-content/uploads/2013/08/Hamster.jpg"}}
    it "should create a new product, increasing the count" do
      expect{post :create, params}.to change{Product.count}.by(1)
    end
    it "responds with status 302" do
      post :create, params
      expect(response.status).to eq(302)
    end
  end
end
