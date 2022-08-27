FactoryBot.define do
  factory :ordered_item do
    price { 1 }
    seller_id { 1 }
    quantity { 1 }
    estimated_delivery { 1 }
    total { 1 }
    harvest_time { "2022-08-27" }
  end
end
