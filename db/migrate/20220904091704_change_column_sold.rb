class ChangeColumnSold < ActiveRecord::Migration[7.0]

    def change
      change_column :solds, :buyer_id, 'numeric USING CAST(buyer_id AS numeric)'
    end
  
end
