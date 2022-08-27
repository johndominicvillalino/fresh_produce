class CreateOrderedItems < ActiveRecord::Migration[7.0]
  def change
    create_table :ordered_items do |t|
      t.integer :price
      t.integer :seller_id
      t.integer :quantity
      t.integer :estimated_delivery
      t.integer :total
      t.date :harvest_time

      t.timestamps
    end
  end
end
