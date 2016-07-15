require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Product Model" do
    let!(:user) {build :user}
        it { should validate_presence_of :email}
  end
end
