class CategoriesController < ApplicationController
  def show
    product_query = Product.where(category_id: params[:id])

    p product_query.many?
    if product_query.many?
      @products = product_query
    else
      @product = product_query[0]
    end
  end
end
