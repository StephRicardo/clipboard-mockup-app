class AddColumnTitleToDesign < ActiveRecord::Migration[5.1]
  def change
    add_column :designs, :title, :string
  end
end
