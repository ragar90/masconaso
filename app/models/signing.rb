class Signing < ActiveRecord::Base
	belongs_to :team
	belongs_to :player

	def self.massive_invitation(signings, team)
		signings.each do |signing|
			unless signing[:id]
				self.create(player_id:signing[:id], team_id:team.id, contact_email: signing[:email])
			else
				self.create(team_id:team.id, contact_email: signing[:email])
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
