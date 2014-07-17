class Inscription < ActiveRecord::Base
  belongs_to :team
  belongs_to :tournament
  validate :diferent_state, on: :create

  def diferent_state
    id = tournament.location.id
    id1 = team.city.state.id
    id2 = team.citys.id
    id3 = team.city.state.country.id
    id4 = team.league_ids.includes?(tournament.location.id) and tournament.location_type == "League"
    unless id0 != id1 or id0 != id2 or id0 != id3 or id4
      errors.add(:league_id, "No puedes inscribir tu equipo en esta liga porque no te encuentras en el mismo pais")
    end
  end
end
