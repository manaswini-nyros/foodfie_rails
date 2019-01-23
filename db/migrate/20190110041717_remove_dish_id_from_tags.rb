class RemoveDishIdFromTags < ActiveRecord::Migration[5.2]
  def change
  	remove_column :tags, :dish_id
  end
end
