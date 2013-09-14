class League < ActiveRecord::Base
	belongs_to :city
	has_many :competitions
	has_many :teams, through: :competitions
	belongs_to :sport
end
