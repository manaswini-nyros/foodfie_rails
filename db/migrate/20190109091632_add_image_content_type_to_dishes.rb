class AddImageContentTypeToDishes < ActiveRecord::Migration[5.2]
  def change
  	add_column :dishes, :image_content_type, :string
  end
end
