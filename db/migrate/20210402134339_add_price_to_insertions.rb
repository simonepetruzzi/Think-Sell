class AddPriceToInsertions < ActiveRecord::Migration[6.0]
  def change
    add_column :insertions, :price, :integer
  end
end
