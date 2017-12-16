class AddPhoneVisibilityToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :phone_visibility, :boolean
  end
end
