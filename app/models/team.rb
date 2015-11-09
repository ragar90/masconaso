class Team < ActiveRecord::Base
	belongs_to :sport
	belongs_to :league
	belongs_to :captain, class_name: "Player"
	has_many :signings
	has_many :players, through: :signings
	has_many :inscriptions
	has_many :tournaments, through: :inscriptions
  validates :name,:captain_id, :presence=>true
  
end