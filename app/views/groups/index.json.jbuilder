json.array!(@groups) do |group|
  json.extract! group, :id, :name, :location
  json.url group_url(group, format: :json)
end
