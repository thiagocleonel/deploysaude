json.array!(@localities) do |locality|
  json.extract! locality, :id
  json.url locality_url(locality, format: :json)
end
