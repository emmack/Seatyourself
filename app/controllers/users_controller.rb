class UsersController < ApplicationController
def index
  if params[:search].present?
    @locations = Restaurant.near(params[:search], 10, :order => "distance ASC", :units => "km")
  else
    @locations = Restaurant.all
  end
	end

	def new
		@user = User.new 
	end

	def create
		@user= User.new(user_params)
		if @user.save
			redirect_to user_path(@user)
		else
			render :new
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def update 
		@user=User.find(params[:id])
		if @user.update_attributes(user_params)
			redirect_to user_path(@user)
		else
			render :edit
		end
	end 

	def edit
		@user = User.find(params[:id])
	end

	private
  	def user_params
  	 	params.require(:user).permit(:email, :password, :password_confirmation, :name, :avatar)
  	end
end
