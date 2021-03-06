class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   protect_from_forgery with: :exception
  private

  def current_user
    (@current_user||= User.find(session[:user_id]) if session[:user_id])  
  end

  def current_restaurant
    (@current_restaurant||= Restaurant.find(session[:restaurant_id]) if session[:restaurant_id])
  end

  helper_method :current_user
   helper_method :current_restaurant

   def ensure_user_logged_in
    unless current_user
      flash[:alert] = "Please log in"
      redirect_to new_session_path
    end
  end

      def ensure_restaurant_logged_in
    unless current_restaurant
      flash[:alert] = "Please log in"
      redirect_to new_session_path
    end
  end

  


end