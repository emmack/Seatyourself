class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.text :location
      t.integer :category_id
      t.integer :size
      t.string :avatar

      t.timestamps
    end
  end
end
