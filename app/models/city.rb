class City < ActiveRecord::Base
	belongs_to :state
  has_many :leagues, as: :residence 
  has_many :tournaments, as: :location 
  validates :name, :presence=>true
end
