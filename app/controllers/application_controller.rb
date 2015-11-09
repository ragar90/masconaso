class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :verify_location

  def verify_location
  	ip_address = request.remote_ip == "127.0.0.1" ? "73.181.158.214" : request.remote_ip
  	geocoder = Geocoder.search(ip_address)
  	@current_lattitude ||= geocoder.first.data["latitude"]
  	@current_longitude ||= geocoder.first.data["longitude"]
  	@current_city ||= City.get_or_create_city_by_geocoder(geocoder)
  end

  def current_city
  	@current_city
  end
  helper_method :current_city

  def current_position
  	{lattitude: @current_lattitude, longitude: @current_longitude }
  end
  helper_method :current_position
end
