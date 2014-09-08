class ChangeNames < ActiveRecord::Migration
  def change
  	rename_column :bookings, :time, :start_time
  	rename_column :bookings, :size, :party_size
  	rename_column :restaurants, :size, :capacity

  end
end
