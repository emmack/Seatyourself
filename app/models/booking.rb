class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	validates :date, presence: true
	validates :time, presence: true, uniqueness: {
		scope: :date,
		message: "Time is already taken"}
	
end
