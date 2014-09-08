class Booking < ActiveRecord::Base
	belongs_to :user
	belongs_to :restaurant
	validates :date, presence: true


	validate :availability, on: :create

	private
		def availability
			#restaurant
			#start_time
			#party_size
			unless restaurant.available?(party_size, start_time)
				errors.add(:start_time, "Booking is unavilable at that time, please try another.")
			end
		end

end
