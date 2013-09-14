class Player < ActiveRecord::Base
	has_many :signings
	has_many :teams, throug: :signings
end
