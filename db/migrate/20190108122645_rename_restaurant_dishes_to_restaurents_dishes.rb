class RenameRestaurantDishesToRestaurentsDishes < ActiveRecord::Migration[5.2]
  def change
  	rename_table :restaurant_dishes, :restaurants_dishes
  end
end
