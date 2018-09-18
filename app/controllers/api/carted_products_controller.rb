class Api::CartedProductsController < ApplicationController
  before_action :authenticate_user

  def index
     @carted_products = CartedProduct.find_by(user_id: current_user)
     render 'index.json.jbuilder'
  end

  def create
    @carted_product = CartedProduct.new(
                                        user_id: current_user.id,
                                        product_id: params[:product_id],
                                        quantity: params[:quantity]
                                        )
    @carted_product.save

    render 'show.json.jbuilder'
  end
end
