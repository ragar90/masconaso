class League < ActiveRecord::Base
	belongs_to :city
	belongs_to :sport
	has_many :teams
	has_many :tournaments
  validates :name, :presence=>true
end
