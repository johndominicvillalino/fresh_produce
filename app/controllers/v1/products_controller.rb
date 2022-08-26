class V1::ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update]
  before_action :set_product, only: [:edit, :update, :destroy]

  def index 
    @products = Product.all
    render json: @products, status:200
  end


  def new
    @product = Product.new
    @product.user_id = current_user.id
    render :json => @product
  end

  def create
    if current_user.role == "farmer"
      @product = Product.create(product_params)
      @product.user_id = current_user.id

      respond_to do |format|
        if @product.save
          format.json  { render :json => @product,
                        status: :created }
        else
          format.json  { render :json => @product.errors,
                        :status => :unprocessable_entity }
        end
      end
    else
      render :json => "User Not Authorized"
    end
  end

  def edit
   
    render :json => @product
  end 

  def update
   
    if @product.update(product_params)
      render :json => @product
    else
      render :json => @product.errors,:status => :unprocessable_entity
    end
  end

  def destroy
    @product.destroy
    render :json => "Product #{@product.id} deleted"
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.permit(:image, :name, :price, :minimum_order, :qty_measurement, :units_available, :harvest_time, :product_type, :estimated_delivery, :user_id)
  end
end