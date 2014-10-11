class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :address
      t.float :latitude
      t.float :longitude
      t.belongs_to :restaurant, index: true

      t.timestamps
    end
  end
end
