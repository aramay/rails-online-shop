class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  def index
    @orders = Order.all
  end

  # GET /orders/1
  def show
  end

  # GET /orders/new
  def new
    p "*" * 8
    p params
    p "*" * 8
    p session[:product_id]
    # binding.pry

    p "*" * 8
      @cart = current_cart

      if @cart.line_items.empty?

          product = Product.find(session[:product_id])

          p product
        #   @product = Product.find(params[:product_id])
        #   redirect_to '/products/session[:product_id]', notice: "Your cart is empty"
          redirect_to product_path(session[:product_id]), notice: "Your cart is empty"
          return
      end

      @order = Order.new
      respond_to do |format|
          format.html #new html.erb
          format.json { render json: @order }
      end
  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  def create
    @order = Order.new(order_params)
    # @order = Order.new(params[:order])
    @order.add_line_items_from_cart(current_cart) #adds into this order the items that are already stored in the cart

    respond_to do |format|

        if @order.save
            Cart.destroy(session[:cart_id])
            session[:cart_id] = nil

            # format.html { redirect_to @order, notice: "Thank you for your order" }

            # Temporarily redirect_to to root_path

            format.html { redirect_to root_path, notice: "Thank you for your order" }
            format.json { render json: @order, status: :created, location: order }

            #   redirect_to @order, notice: 'Order was successfully created.'
        else
            @cart = current_cart
            format.html { render action: "new" }
            format.json { render json: @order.erros, status: "unprocessable_entity" }
            #   render :new
        end
    end
  end

  # PATCH/PUT /orders/1
  def update
    if @order.update(order_params)
      redirect_to @order, notice: 'Order was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /orders/1
  def destroy
    @order.destroy
    redirect_to orders_url, notice: 'Order was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type)
    end
end
