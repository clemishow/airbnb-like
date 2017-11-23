class AddCoordinatesToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :coordinates, :string, array: true, default: []
  end
end
