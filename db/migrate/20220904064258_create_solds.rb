class CreateSolds < ActiveRecord::Migration[7.0]
  def change
    create_table :solds do |t|
      t.references :product, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :qty
      t.integer :price
      t.string :buyer_id

      t.timestamps
    end
  end
end
