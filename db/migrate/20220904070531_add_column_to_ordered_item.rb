class AddColumnToOrderedItem < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_items, :status, :string
  end
end
