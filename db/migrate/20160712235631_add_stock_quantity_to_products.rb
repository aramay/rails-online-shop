class AddStockQuantityToProducts < ActiveRecord::Migration
  def up
    add_column :products, :quantity, :integer, null: false
  end

  def down
    remove_column :products, :quantity, :integer
  end
end
