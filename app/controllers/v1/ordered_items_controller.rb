class V1::OrderedItemsController < ApplicationController
    before_action :authenticate_user!

    def pay_now 
    
        order = OrderedItem.find(pay_params[:id])
        order.status = 'paid'
        order.save
        render json: order

    end


    private
    def pay_params
        params.permit(:id)
    end


end