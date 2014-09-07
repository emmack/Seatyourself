class AddRestName < ActiveRecord::Migration
  def change
  	add_column :bookings, :restaurant_name, :string
  	  	add_column :bookings, :user_name, :string

  end
end
