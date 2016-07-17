require 'rails_helper'

RSpec.describe User, type: :model do
  describe "User Model" do
    let!(:user) {build :user}
      context "validations" do
        it { should validate_presence_of :email}
        it { should validate_presence_of :password}
      end
      context "#save" do
        it "return true if User saved" do
          expect {user.save}.to change(User, :count).by(1)
        end
      end

      context "#destroy" do
        it "return true if User destroied" do
          expect {user.destroy}.to change(User, :count).by(0)
        end
      end
  end
end
