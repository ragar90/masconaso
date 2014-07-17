class Country < ActiveRecord::Base
	has_many :states
  has_many :leagues, as: :residence 
  has_many :tournaments, as: :location 
  validates :name, :presence=>true
end
