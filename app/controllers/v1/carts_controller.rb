class V1::CartsController < ApplicationController
    load_and_authorize_resource
    before_action :authenticate_user!

    def cart_items
        @items = current_user.cart
        render json: @items
    end

    def add_to_cart
     item = cart_params
     item[:user_id] = current_user.id
     add_item = Cart.new(item)
     if add_item.save
        render json: 'added'
     else
        render json: 'failed'
     end
    end

    def remove_cart_item
        
        Cart.find(params[:id]).delete
        render json:'deleted'
    end
    
    private
    def cart_params    
        params.permit(:qty,:product_id)
    end

end