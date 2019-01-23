class RemoveImageContentTypeFromDishes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :dishes, :image_content_type
  end
end
