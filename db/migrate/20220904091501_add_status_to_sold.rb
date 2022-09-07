class AddStatusToSold < ActiveRecord::Migration[7.0]
  def change
    add_column :solds, :status, :string
  end
end
