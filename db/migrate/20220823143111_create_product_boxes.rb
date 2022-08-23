class CreateProductBoxes < ActiveRecord::Migration[7.0]
  def change
    create_table :product_boxes do |t|
      t.string :image
      t.string :image_url      
      t.float :price
      t.string :name
      t.integer :minimum_order
      t.string :size_measure
      t.integer :edd
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
