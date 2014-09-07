class RestaurantsController < ApplicationController
	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant= Restaurant.new(restaurant_params)
			if @restaurant.save
				redirect_to restaurant_path(@restaurant)
			else
				render :new
			end
	end


	def show
		@restaurant = Restaurant.find(params[:id])
		if current_user
            @booking = @restaurant.bookings.build
        end
	end

	def update 
		@restaurant = Restaurant.find(params[:id])
		if @restaurant.update_attributes(restaurant_params)
			redirect_to restaurant_path(@restaurant)
		else
			render :edit
		end
	end 

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	private
  	def restaurant_params
  	 	params.require(:restaurant).permit( :email, :password, :password_confirmation, :name, :avatar, :location, :avatar, :category_id, :size)
  	end
end
