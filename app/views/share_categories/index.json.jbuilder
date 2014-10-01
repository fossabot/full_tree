json.array!(@share_categories) do |share_category|
  json.extract! share_category, :id, :name
  json.url share_category_url(share_category, format: :json)
end
