class LocationsController < ApplicationController
	def index
		if params[:search].present?
			@location = Location.near(params[:search], 50, :order => :distance)

		else
			@locations = Location.all
		end
	end
end

