class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :bio, :string
    add_column :users, :city, :string
    add_column :users, :barangay, :string
    add_column :users, :town, :string
    add_column :users, :province, :string
  end
end
