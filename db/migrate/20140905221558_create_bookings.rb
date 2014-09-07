class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.integer :size
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
