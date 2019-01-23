class RemoveColumnFromTypes < ActiveRecord::Migration[5.2]
  def change
  	remove_column :types, :type
  end
end
