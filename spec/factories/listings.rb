# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :listing do
    user_id 1
    community_id 1
    listing_type_id 1
    listing_category_id 1
    share_type_id 1
    share_category_id 1
    txn_terms "MyString"
    description "MyText"
  end
end
