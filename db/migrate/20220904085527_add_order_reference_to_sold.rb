class AddOrderReferenceToSold < ActiveRecord::Migration[7.0]
  def change
    add_column :solds, :order_reference, :integer
  end
end
