class DropCountries < ActiveRecord::Migration[5.2]
  def change
  	drop_table :countries
  end
end
