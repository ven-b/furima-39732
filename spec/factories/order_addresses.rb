FactoryBot.define do
  factory :order_address do
    postal_code { '123-4567' }
    area_id {Faker::Number.between(from: 2, to: 48)}
    city { '東京都' }
    street { '渋谷区1-1-1' }
    building_name { 'アジアビル' }
    phone_number { Faker::Number.between(from: 1000000000, to: 99999999999) }
    token {"tok_abcdefghijk00000000000000000"}
  end
end