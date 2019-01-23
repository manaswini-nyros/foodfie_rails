class AddPaperclipToRestaurant < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :restaurants, :image
  end
end
