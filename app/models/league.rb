class League < ActiveRecord::Base
	belongs_to :residence, polymorphic: true
	has_many :competitions
	has_many :teams, through: :competitions
	belongs_to :sport
	has_many :tournaments
end
