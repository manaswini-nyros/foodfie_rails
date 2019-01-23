class AddImageToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :image, :blob
  end
end
