class AddArtistsToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :artists, :integer
  end
end
