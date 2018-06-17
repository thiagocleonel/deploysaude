json.array!(@collaborator_categories) do |collaborator_category|
  json.extract! collaborator_category, :id
  json.url collaborator_category_url(collaborator_category, format: :json)
end
