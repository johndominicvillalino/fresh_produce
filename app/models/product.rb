class Product < ApplicationRecord
  belongs_to :user
  belongs_to :orders
end
