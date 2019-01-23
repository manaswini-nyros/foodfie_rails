class DropDish < ActiveRecord::Migration[5.2]
  def change
  	drop_table :dishes
  end
end
