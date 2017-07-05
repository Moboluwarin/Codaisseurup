FactoryGirl.define do
  factory :event do
    name         "kitty"
    description  "learning baking"
    location       "Almere"
    price             { Faker::Commerce.price }
    includes_food    true
    includes_drinks   true
    starts_at         Time.now
    ends_at           2.hours.from_now
    active             true
    user              { build(:user) }

    trait :active do
      active true
    end

    trait :inactive do
      active false
    end
  end
end
#  name:string
# description:text
# location:string
# price:decimal
# capacity:integer
# includes_food:boolean
# includes_drinks:boolean
# starts_at:datetime
# ends_at:datetime
# active:boolean
