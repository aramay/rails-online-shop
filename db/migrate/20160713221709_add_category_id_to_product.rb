class AddCategoryIdToProduct < ActiveRecord::Migration
  def up
    add_column :products, :category_id, :integer
  end

  def down
    remove_column :products, :category_id, :integer
  end
end
