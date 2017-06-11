class RemoveColumnsFromDesign < ActiveRecord::Migration[5.1]
  def change
  	remove_column :designs, :title
  	remove_column :designs, :image
  end
end
