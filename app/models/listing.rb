class Listing < ActiveRecord::Base
  belongs_to :listing_type
  belongs_to :listing_category
  belongs_to :user
  belongs_to :community
  belongs_to :share_type
  belongs_to :share_category

  def pretty_title
    title.split(' ').map { |x| x.capitalize }.join(' ')
  end
end

