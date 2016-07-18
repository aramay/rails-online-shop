class CartsController < ApplicationController
  def show
  	@order_items = current_order.order_items
  end

  def update
    @order_items = current_order.order_items
    @order_items.each do |item|
      Product.find(item.product_id).quantity -= item.quantity
    end
    session[:order_id] = nil
    render "checkout/checkout_confirmation.html.haml"
  end
end
