class Competition < ActiveRecord::Base
	belongs_to :team
	belongs_to :league
  validate :diferent_state, on: :create

  def diferent_state
    id = league.residence.id
    id1 = team.city.state.id
    id2 = team.citys.id
    id3 = team.city.state.country.id
    unless id0 != id1 or id0 != id2 or id0 != id3
      errors.add(:league_id, "No puedes inscribir tu equipo en esta liga porque no te encuentras en el mismo pais")
    end
  end
end
