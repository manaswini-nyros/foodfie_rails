class AddRatingToDish < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :rating, :decimal
  end
end
