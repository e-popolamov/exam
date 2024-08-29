FactoryBot.define do
  factory :color do
    name { Faker::Color.color_name.to_sym }
  end
end
