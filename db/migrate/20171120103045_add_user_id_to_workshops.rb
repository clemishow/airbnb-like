class AddUserIdToWorkshops < ActiveRecord::Migration[5.1]
  def change
    add_column :workshops, :user_id, :int
  end
end
