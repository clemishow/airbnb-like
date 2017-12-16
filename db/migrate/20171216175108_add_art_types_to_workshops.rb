class AddArtTypesToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :art_types, :string, array: true, default: []
  end
end
