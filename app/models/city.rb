class City < ActiveRecord::Base
	belongs_to :state
	has_many :leagues, as: :residence 
	has_many :tournaments
end
