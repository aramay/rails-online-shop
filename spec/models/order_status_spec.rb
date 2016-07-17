require 'rails_helper'

RSpec.describe OrderStatus, type: :model do
  describe "Order Status" do
    let!(:order_status) {build :order_status}
      context "validations" do
       # it { should validate_presence_of :name}
      end

      context "#save" do
        it "return true if OrderStatus saved" do
          expect {order_status.save}.to change(OrderStatus, :count).by(1)
        end
      end

      context "#update" do
        it "return true if OrderStatus updated" do
          expect {order_status.name="In Progress"}.to change(order_status, :name).to("In Progress")
        end
      end

      context "#destroy" do
        it "return true if OrderStatus destroyed" do
          expect {order_status.destroy}.to change(OrderStatus, :count).by(0)
        end
      end
  end
end
