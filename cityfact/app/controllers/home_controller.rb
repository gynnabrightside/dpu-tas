class HomeController < ApplicationController
	def index 
		@cities_maps = City.all.to_gmaps4rails do |city, marker|
      marker.json "\"id\": #{city.id}"
    end

	end

end
