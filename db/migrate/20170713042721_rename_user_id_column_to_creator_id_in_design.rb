class RenameUserIdColumnToCreatorIdInDesign < ActiveRecord::Migration[5.1]
  def change
    rename_column :designs, :user_id, :creator_id
  end
end
