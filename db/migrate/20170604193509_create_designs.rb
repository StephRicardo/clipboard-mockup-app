class CreateDesigns < ActiveRecord::Migration[5.1]
  def change
    create_table :designs do |t|
      t.string :title
      t.string :image
      t.string :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
