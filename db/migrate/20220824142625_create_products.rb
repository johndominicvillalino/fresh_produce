class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.integer :price
      t.integer :minimum_order
      t.string :qty_measurement
      t.integer :units_available
      t.date :harvest_time
      t.string :product_type
      t.integer :estimated_delivery
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
