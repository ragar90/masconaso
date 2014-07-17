class Tournament < ActiveRecord::Base
	has_many :inscriptions
	has_many :teams, through: :inscriptions
	belongs_to :organizator, class_name: "Player"
  belongs_to :location, polymorphic: true
	belongs_to :league
  validates :name,:organizator, :presence=>true
end
