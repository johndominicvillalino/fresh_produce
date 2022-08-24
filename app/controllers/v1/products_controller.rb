class V1::ProductsController < ApplicationController

  def index
    @products = Products.All 
    render :json => @products
  end
end