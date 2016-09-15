require 'rails_helper'

RSpec.describe Order, type: :model do
 describe "Order Model" do
    before(:each) do
      @order_item = OrderItem.new(product_id: 1, order_id: 1, unit_price: 1.99, quantity: 1, total_price: 1.99)
      @order = Order.new(subtotal: 20.99, tax: 1.99, shipping: 1.99, total: 22.99, order_status_id: 2)
    end
      context "validations" do

      end
    #context "#save" do
    #  it "return true if Order saved" do
    #    expect {@order.save}.to change(Order, :count).by(1)
    #  end
    #end

      context "#update" do
        it "return truordere if Order updated" do
          expect {@order.tax=10.99}.to change(@order, :tax).to(10.99)
        end
      end

      context "#destroy" do
        it "return true if Order destroyed" do
          expect {@order.destroy}.to change(Order, :count).by(0)
        end
      end
  end
end
