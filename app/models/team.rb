class Team < ActiveRecord::Base
	belongs_to :sport
	has_many :competitions
	has_many :leagues, through: :competitions
	has_many :signings
	has_many :players, through: :signings
	belongs_to :captain, class_name: "Player"
	has_many :inscriptions
	has_many :tournaments, through: :inscriptions
  validates :name,:captain_id, :presence=>true
  
end