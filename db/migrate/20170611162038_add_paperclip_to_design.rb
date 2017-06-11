class AddPaperclipToDesign < ActiveRecord::Migration[5.1]
  def change
  	add_attachment :designs, :image
  end
end
