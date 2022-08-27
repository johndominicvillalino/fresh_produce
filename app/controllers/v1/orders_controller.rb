class V1::OrdersController < ApplicationController

    def create
        binding.pry
        render json: 'pass'
    end

    private
    def order_params    
        params.permit(:orders => [:price,:minimum_order])

    end

end