json.array!(@scouts) do |scout|
  json.extract! scout, :id, :email, :firstname, :lastname, :address, :phonehome, :phonemobile, :age, :level_id, :team_id, :group_id
  json.url scout_url(scout, format: :json)
end
