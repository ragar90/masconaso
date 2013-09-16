class Tournament < ActiveRecord::Base
	has_many :inscriptions
	has_many :teams, through: :inscriptions
	belongs_to :organizator, class_name: "Player"
	belongs_to :city
	belongs_to :state
	belongs_to :league
end
