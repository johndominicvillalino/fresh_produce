class Order < ApplicationRecord
    has_many :ordered_items
   
    def test
        super(include: :ordered_items)
    end

end
