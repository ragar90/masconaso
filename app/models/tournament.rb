class Tournament < ActiveRecord::Base
	belongs_to :organizator, class_name: "Player"
	belongs_to :league
	has_many :inscriptions
	has_many :teams, through: :inscriptions
  validates :name,:organizator, :presence=>true
end
