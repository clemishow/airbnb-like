class AddTotalPriceToBooks < ActiveRecord::Migration[5.1]
  def change
    add_column :books, :total_price, :integer
  end
end
