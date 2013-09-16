json.array!(@tournaments) do |tournament|
  json.extract! tournament, :name, :start_date, :inscriptions_start, :inscriptions_deadline, :is_oppen, :league_id, :city_id, :state_id, :description, :inscription_cost
  json.url tournament_url(tournament, format: :json)
end
