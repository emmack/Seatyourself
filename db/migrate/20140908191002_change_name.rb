class ChangeName < ActiveRecord::Migration
  def change
  	rename_column :restaurants, :location, :address 
  end
end
