FactoryBot.define do
  factory :order do
    price { 1 }
    stage { "MyString" }
    order_type { "MyString" }
  end
end
