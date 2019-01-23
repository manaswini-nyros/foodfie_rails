class CreateDishes < ActiveRecord::Migration[5.2]
  def change
    create_table :dishes do |t|
      t.string :name
      t.integer :price
      t.blob :image
      t.integer :tag_id

      t.timestamps
    end
  end
end
