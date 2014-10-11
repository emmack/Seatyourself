class AddRestLocation < ActiveRecord::Migration
  def change
  	add_column :locations, :restaurant_location, :text
  end
end
