class Listing < ActiveRecord::Base
  has_one :listing_type
  has_one :listing_category
end
