class AddColumnDescriptionToDesign < ActiveRecord::Migration[5.1]
  def change
    add_column :designs, :description, :string
  end
end
