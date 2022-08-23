class CreateProductAdopts < ActiveRecord::Migration[7.0]
  def change
    create_table :product_adopts do |t|
      t.string :image
      t.string :image_url
      t.string :name
      t.float :price
      t.integer :minimum_order
      t.integer :size_measure
      t.integer :units_available
      t.date :harvest_time
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
