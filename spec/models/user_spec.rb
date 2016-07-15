require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Product Model" do
    let!(:user) {build :user}
      context "validations" do
        it { should validate_presence_of :email}
        it { should validate_presence_of :password}
      end
      context "save" do
        it "return true" do
          expect {user.save}.to change(User, :count).by(1)
        end
      end
  end
end
