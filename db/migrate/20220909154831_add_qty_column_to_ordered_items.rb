class AddQtyColumnToOrderedItems < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_items, :qty, :integer
  end
end
