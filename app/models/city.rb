class City < ActiveRecord::Base
	belongs_to :state
  has_many :leagues
  validates :name, :presence=>true
  after_create :create_defaults_leagues

  def self.get_or_create_city_by_geocoder(geocoder)
  	geocoder_data = geocoder.first.data
  	country = Country.where(iso: geocoder_data["country_code"]).first
  	state = State.where(iso: "#{country.iso.upcase}-#{geocoder_data["region_code"]}").first
  	if state.nil?
  		state = State.create(country_code: country.code ,iso: "#{country.iso.upcase}-#{geocoder_data["region_code"]}", name:	geocoder_data["region_name"])
  	end
  	args = {
			trim_city_name: geocoder_data["city"].downcase.gsub(" ","").first,
			state_id: state.id
		}
		city  = City.where("replace(lower(name), ' ', '') like  :trim_city_name and state_id = :state_id ", args).first
		return city.present? ? city : City.create(name: geocoder_data["city"].titleize, state_id: state.id, lattitude: geocoder_data["latitude"], longitude: geocoder_data["longitude"] )
  end

  def create_defaults_leagues
  	sports = Sport.all
  	sports.each do |sport|
  		League.create(name: "Friendly", sport_id: sport.id, city_id: self.id)
  	end
  end

end
