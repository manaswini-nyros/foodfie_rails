class RemoveCityIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :city_id, :integer
  end
end
