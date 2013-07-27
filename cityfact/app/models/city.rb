class City < ActiveRecord::Base
  attr_accessible :title, :latitude, :longitude, :description, :dpu_team, :outputs, :related_outputs

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_infowindow
  	text="Title: #{self.title}<br>description: #{self.description}<br>dpu_team: #{self.dpu_team}"
  	if self.outputs.present?
  		text << "<br>outputs: #{self.outputs}"
  	end

  	if self.related_outputs.present?
  		text << "br>related_outputs: #{self.related_outputs}"
  	end

  	text
  end

end
