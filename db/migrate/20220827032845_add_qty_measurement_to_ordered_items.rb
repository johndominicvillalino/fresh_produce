class AddQtyMeasurementToOrderedItems < ActiveRecord::Migration[7.0]
  def change
    add_column :ordered_items, :qty_measurement, :string
  end
end
