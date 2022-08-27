class V1::OrdersController < ApplicationController
    before_action :authenticate_user!
    load_and_authorize_resource

    def complete_order

        user_id = current_user.id;
        orders = order_params[:orders]    
        order_total = orders.map{|order| order[:total]}.sum
        order = Order.new(:price => order_total,:stage => 'completed', :order_type => 'buy', :user_id => user_id )

        if order.save
            orders.map{|o| o[:order_id] = order.id}
            cart_items = orders.map{|p| p[:product_id]}
            OrderedItem.insert_all(orders)
            Cart.where(:product_id => cart_items).destroy_all
            render json: 'pass'
        else
            render json: 'fail', status: :unprocessable_entity
        end
       
    end

    private
    def order_params    
        params.permit(:orders => [:price,:seller_id,:qty_measurement,:estimated_delivery,:harvest_time,:name,:product_id,:total])
    end

end