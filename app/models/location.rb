class Location < ActiveRecord::Base
  belongs_to :restaurant
  geocoded_by :restaurant_location
  after_validation :geocode, :if => :restaurant_location_changed?
end
