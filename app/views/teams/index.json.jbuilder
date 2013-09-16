json.array!(@teams) do |team|
  json.extract! team, :name, :sport_id, :description
  json.url team_url(team, format: :json)
end
