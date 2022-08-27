class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.integer :price
      t.string :stage
      t.string :order_type

      t.timestamps
    end
  end
end
