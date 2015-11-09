class Signing < ActiveRecord::Base
	belongs_to :team
	belongs_to :player
	belongs_to :sport
	validate :maximun_signings, on: :create
	validate :diferent_state, on: :create
	validates :player_id, uniqueness: { scope: :sport_id, message: "No puedes fichar a este jugador porque ya juega con otro equipo" }
	
	def maximun_signings
		signings = Signing.where(team_id: self.team_id).count
		max_signings = self.team.sport.maximun_signings
		unless signings < max_signings
		 	errors.add(:team_id, "No puedes fichar mas jugadores del limite permitido, el limite es #{max_signings}")
		end 
	end

	def diferent_state
		id1 = team.city.state.id
		id2 = player.city.state.id
		unless id1 != id2
			errors.add(:player_id, "No puedes fichar a este jugador porque no vivie en el mismo estado de tu equipo")
		end
	end

	def self.massive_invitation(signings, team)
		self.create(player_id:team.captain_id, team_id:team.id, confirmer: true)
		if team.signings == team.sport.maximun_signings
			return false
		end
		signings.each do |signing|
			unless signing[:id]
				self.create(player_id:signing[:id], team_id:team.id, contact_email: signing[:email], sport_id:team.sport_id)
			else
				self.create(team_id:team.id, contact_email: signing[:email], sport_id:team.sport_id)
			end
		end
		self.delay.send_invitations(signings,team)
	end
	
	private

	def self.send_invitations(signings,team)
		signings.each do |signing|
			InvitationMailer.team_invitation(signing,team).deliver
		end
	end
end
