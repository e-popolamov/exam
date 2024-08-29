FactoryBot.define do
  factory :product do
    name { Faker::Name.initials(number: 4) }

    trait :with_color do
      after(:create) do |product|
        color = FactoryBot.create(:color)
        create(:product_color, color: color, product: product)
      end
    end
  end
end
