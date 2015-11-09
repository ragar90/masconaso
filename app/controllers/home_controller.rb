class HomeController < ApplicationController
  def index
  	if player_signed_in?
  		redirect_to my_locker_path
  	else
  		respond_to do |format|
  			format.html{render layout: false}
  		end
  	end
  end

  def about_us
  end

  def terms
  end
end
