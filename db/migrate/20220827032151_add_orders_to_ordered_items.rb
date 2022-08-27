class AddOrdersToOrderedItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :ordered_items, :order, null: false, foreign_key: true
  end
end
