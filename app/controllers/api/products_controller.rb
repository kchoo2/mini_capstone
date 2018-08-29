class Api::ProductsController < ApplicationController

  def all_products_action
    @products = Product.all
    render "all_products.json.jbuilder"
  end

  def first_product_action
    @product = Product.first
    render "first_product.json.jbuilder"
  end

  def second_product_action
    @product = Product.find_by(2)
    render "second_product.json.jbuilder"p
  end
end
