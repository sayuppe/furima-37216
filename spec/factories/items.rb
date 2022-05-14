FactoryBot.define do
  factory :item do
    association :user

    name { Faker::Name.name }
    introduction { Faker::Lorem.sentence }
    category_id { '5' }
    condition_id { '6' }
    shipping_cost_id { '7' }
    prefecture_id { '8' }
    shipping_days_id { '9' }
    price { Faker::Number.between(from: 300, to: 9_999_999) }

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end