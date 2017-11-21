class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.integer :user_id
      t.integer :workshop_id
      t.datetime :start_date
      t.datetime :end_date
      t.integer :status

      t.timestamps
    end
  end
end
