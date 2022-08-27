class AddProductToOrderedItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :ordered_items, :product, null: true, foreign_key: true
  end
end
