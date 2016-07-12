class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :update, :destroy]
  def index
    @products = Product.all
  end

  def show
    find_product
  end

  def new
    @product = Product.new(name: params[:name], price: params[:price], description: params[:description], image: params[:image])
  end

  def create
    @product = Product.new(name: params[:name], price: params[:price], description: params[:description], image: params[:image])
    if @product.save
      redirect_to '/index'
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

  def delete
    find_product.destroy
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :image)
  end

  def find_product
    @product = Product.find(params[:id])
  end
end
