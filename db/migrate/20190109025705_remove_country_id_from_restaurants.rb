class RemoveCountryIdFromRestaurants < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :country_id, :integer
  end
end
