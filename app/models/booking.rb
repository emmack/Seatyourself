class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	validates :date, presence: true

	validates_uniqueness_of :time, scope: [:date, :restaurant_id], message: 'That time is unavailable, please try another.'




end
