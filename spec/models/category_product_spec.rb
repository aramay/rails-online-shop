require 'rails_helper'

RSpec.describe CategoryProduct, type: :model do
  describe "Category_Product Model" do
    before(:each) do
      CategoryProduct.create(product_id:1,category_id:1)
      let!(:category) {build :category}
      let!(:product) {build :product}
      context "validations" do
        it { should validate_presence_of :product_id}
        it { should validate_presence_of :category_id}
      end
    end
  end
end
