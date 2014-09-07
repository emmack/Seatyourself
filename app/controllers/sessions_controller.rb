class SessionsController < ApplicationController
 def new
    end

    def create

        user = User.find_by_email(params[:email]) 
        if user != nil
        	if user && user.authenticate(params[:password])
            	session[:user_id] = user.id
            	redirect_to root_path, :notice => "Logged in!"
       	 	else
            	flash.now[:alert] = "Invalid email or password"
            	render "new"
        	end
        else 
        	user = Restaurant.find_by_email(params[:email]) 
        	if user && user.authenticate(params[:password])
            	session[:restaurant_id] = user.id
            	redirect_to root_path, :notice => "Logged in!"
       	 	else
            	flash.now[:alert] = "Invalid email or password"
            	render "new"
        	end
        end
    end

    def destroy

        session[:user_id] = nil
        session[:restaurant_id] = nil

        redirect_to users_url, notice: "Logged out!"
    end
end
