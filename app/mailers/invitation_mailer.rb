class InvitationMailer < ActionMailer::Base
  default from: "from@example.com"
  def team_invitation(signing,team)
  	@team = team
  	@captain = team.captain
  	mail to: signing[:email], subject: "Has sido invitado para unirte a #{team.name}", from:team.captain.email
  end
end
