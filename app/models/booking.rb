class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	validates :date, presence: true
	validates :time, presence: true, uniqueness: {
		scope: :date, :restaurant_id}


		def size_fits
			total_size = @restaurant.size
			size_so_far = booking

		booking = Booking.new
		booking.valid?
		person.errors.messages 
		# => {:time=>["Time is already taken, please choose a new time.", "is too short (minimum is 3 characters)"]}

	
end
