require 'rails_helper'

RSpec.describe CategoryProduct, type: :model do
  describe "Category_Product Model" do
    before(:each) do
      @category = Category.create("name":"ham")
      @product = Product.create("name":"James","description":"Not a hampster.","image":"http://www.kongsbergvet.no/uploads/6/1/3/4/6134802/299713301.jpg","price":20.99,"quantity":2)
      @category_product = CategoryProduct.new(category_id:1, product_id:1)
    end
      context "validations" do
        it "return true" do
          expect(@category_product.product_id).to be 1
          expect(@category_product.category_id).to be 1
        end
      end

      context "#save" do
        it "return true" do
          expect {@category_product.save}.to change(CategoryProduct, :count).by(1)
        end
      end
  end
end
