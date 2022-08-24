class Api::V1::ProductBoxesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @product_boxes = ProductBox.all
    render :json => @product_boxes
  end

  def show

  end
  
  def new
    @product_box = ProductBox.new
    @product_box.user_id = current_user.id
    render :json => @product_box
  end

  def create
  
    @product_box = ProductBox.create(params[:product_box_params])
    @product_box.user_id = current_user.id
    
    respond_to do |format|
      if @product_box.save
        
        format.json  { render :json => @product_box,
                      status: :created }
      else

        format.json  { render :json => @product_box.errors,
                      :status => :unprocessable_entity }
      end
    end

    # if @product_box.save
    #   render :json => @product_box    
    # else
    #   render :json => @product_box.errors,
    #                    :status => :unprocessable_entity
    # end

  end

  private

  def product_box_params
    params.permit(:image, :image_url, :name, :price, :minimum_order, :size_measure, :edd, :user_id)
  end
end