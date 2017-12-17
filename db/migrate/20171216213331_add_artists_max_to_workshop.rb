class AddArtistsMaxToWorkshop < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :artists_max, :integer
  end
end
