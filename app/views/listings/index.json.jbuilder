json.array!(@listings) do |listing|
  json.extract! listing, :title, :id, :user_id, :community_id, :listing_type_id, :listing_category_id, :share_type_id, :share_category_id, :txn_terms, :description
  json.url listing_url(listing, format: :json)
end
