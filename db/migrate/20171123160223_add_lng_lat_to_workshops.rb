class AddLngLatToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :lat, :decimal, { precision: 10, scale: 6 }
    add_column :workshops, :lng, :decimal, { precision: 10, scale: 6 }
  end
end
