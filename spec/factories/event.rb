FactoryGirl.define do
  factory :event do
    name      "wedding-party"
    description         "The marriage between kitty and katty"
    listing_name      { Faker::Lorem.sentence(1) }
    description       { Faker::Lorem.sentence(40) }
    address           { Faker::Address.city }
    includes_food     true
    includes_drinks   true
    starts_at
    price             { Faker::Commerce.price }
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
