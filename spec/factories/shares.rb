# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :share do
    name "MyString"
    description "MyText"
    quantity 1
    will_trade false
    price 1.5
    barter_terms "MyText"
  end
end
