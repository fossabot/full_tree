json.array!(@communities) do |community|
  json.extract! community, :id, :name, :description, :neighborhood, :city, :state, :zipcode
  json.url community_url(community, format: :json)
end
