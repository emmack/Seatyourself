class BookingsController < ApplicationController
    before_filter :ensure_logged_in, only: [:create, :destroy]

def index
	@bookings = Booking.all

end

    def new
    	@restaurant = Restaurant.find(params[:restaurant_id])
    	@booking = Booking.new
    end


	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@booking = @restaurant.bookings.build(booking_params)
			@booking.user = current_user
			if @booking.save
				redirect_to user_bookings_path(@booking), notice: 'Table booked successfully!'
			else
				
				render :new, notice: 'That time is unavailable, please pick a new time.'
			end
	end

	

	
	def update 
		@booking = Booking.find(params[:id])
		if @booking.update_attributes(booking_params)
			redirect_to root_path
		else
			render 'bookings/show'
		end
	end 

	def edit
		@booking = Booking.find(params[:id])
	end

	def destroy
        @booking = Booking.find(params[:id])
        @booking.destroy
        redirect_to bookings_path
    end

	private
  	def booking_params
  	 	params.require(:booking).permit(:user_id, :party_size, :star_time, :date, :restaurant_id, :restaurant_name)
  	 end

  	


  

  	

end
