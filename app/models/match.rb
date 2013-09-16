class Match < ActiveRecord::Base
	belongs_to :team1, class_name: "Team"
	belongs_to :team2, class_name: "Team"
	belongs_to :parent, class_name: "Match"
	belongs_to :tournament
end
