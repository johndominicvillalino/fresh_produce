class AddNameToOrderedItem < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_items, :name, :string
  end
end
