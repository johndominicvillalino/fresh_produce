class OrderedItem < ApplicationRecord
    belongs_to :order   
    after_save :create_sold

    def create_sold
        sold = Sold.all.where(order_reference: id)
       
        if sold.length > 0
            x = sold.first
            x.status = 'paid'
            x.save
        else

        @t = Sold.new(product_id:product_id, user_id: seller_id, qty: qty, price: total, order_reference: id)    
        @t.save
        end

    end

end
