json.array!(@leagues) do |league|
  json.extract! league, 
  json.url league_url(league, format: :json)
end
