json.array!(@listing_categories) do |listing_category|
  json.extract! listing_category, :id, :name
  json.url listing_category_url(listing_category, format: :json)
end
