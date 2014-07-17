class State < ActiveRecord::Base
	belongs_to :country
	has_many :cities
	has_many :leagues, as: :residence 
	has_many :tournaments, as: :location 
  validates :name, :presence=>true
end
