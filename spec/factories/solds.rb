FactoryBot.define do
  factory :sold do
    product { nil }
    user { nil }
    qty { 1 }
    price { 1 }
    buyer_id { "MyString" }
  end
end
