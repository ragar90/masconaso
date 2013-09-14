class Team < ActiveRecord::Base
	belongs_to :sport
	has_many :competitions
	has_many :leagues, through: :competitions
	has_many :signings
	has_many :players, throug: :signings
end
