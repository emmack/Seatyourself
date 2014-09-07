class Addkind < ActiveRecord::Migration
  def change
  	add_column :users, :kind, :string
  	add_column :restaurants, :kind, :string
  end
end
