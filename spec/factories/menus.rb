FactoryBot.define do
  factory :menu do
    name { Faker::Food.dish }
    description { Faker::Food.description[0..149] }
    price { 10000.0 }
  end    
end
