class CreateWorkshops < ActiveRecord::Migration[5.1]
  def change
    create_table :workshops do |t|
      t.string :title
      t.text :description
      t.string :address
      t.float :grade
      t.float :price
      t.json :images

      t.timestamps
    end
  end
end
