class AddOrderToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :order, null: true, foreign_key: true
  end
end
