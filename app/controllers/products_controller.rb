class ProductsController < ApplicationController
  before_action :authenticate_admin, except: [:show, :index]
  before_action :authenticate_user, except: [:show, :index]
  # before_filter :authenticate_user
  before_action :find_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all

    #get random category ID to display as "products you may like"
    @category = get_random_category
    # @order_item = current_order.order_items.new

    @cart = current_cart

    # binding.pry
  end

  def show
    #   binding.pry
    find_product
    p find_product
    # binding.pry
    # @order_item = current_order.order_items.new
    @category = get_random_category

    @cart = current_cart
  end

  def new
    @product = Product.new()
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to root_path
    else
      redirect_to 'products/new'
    end
  end

  def edit
    find_product
  end

  def update
    find_product
    successful_save = @product.update(product_params)
    if successful_save
      redirect_to product_path(@product)
    else
      redirect_to 'edit'
    end
  end

  def destroy
    find_product.destroy
    redirect_to root_path
  end

private
 def authenticate_admin
  if current_user.admin
    redirect_to rails_admin
  else
    redirect_to root_path
  end
 end

  def product_params
    params.require(:product).permit(:name, :price, :description, :quantity, :image)
  end

  def find_product
    @product = Product.find(params[:id])
    session[:product_id] = @product.id
  end

  def get_random_category

      category = Category.all

      rand_category_id = Category.find(rand(1..category.length - 1))

  end
end
