require 'rails_helper'

RSpec.describe Category, type: :model do
  describe "Category Model" do
    let!(:category) {build :category}
      context "validations" do
        it { should validate_presence_of :name}

      end
      context "#save" do
        it "return true" do
        expect {category.save}.to change(Category, :count).by(1)
      end
    end
      context "#destroy" do
        it "return true" do
        expect {category.destroy}.to change(Category, :count).by(0)
      end
    end
  end
end
