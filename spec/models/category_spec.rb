require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Product Model" do
    let!(:product) {build :product}
      context "validations" do
        it { should validate_presence_of :name}
        it { should validate_presence_of :description}
        it { should validate_presence_of :price}
        it { should validate_presence_of :quantity}
        it { should validate_presence_of :image}
      end
      context "#save" do
        it "return true" do
        expect {product.save}.to change(Product, :count).by(1)
      end
    end
      context "#destroy" do
        it "return true" do
        expect {product.destroy}.to change(Product, :count).by(0)
      end
    end
  end
end
