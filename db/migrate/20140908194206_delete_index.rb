class DeleteIndex < ActiveRecord::Migration
  def change
  	remove_index :locations, name: :index_locations_on_restaurant_id
  end

end
