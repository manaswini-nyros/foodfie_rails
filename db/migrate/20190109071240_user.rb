class User < ActiveRecord::Migration[5.2]
  def change
  	add_attachment :dishes,:image
  end
end
