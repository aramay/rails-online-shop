class AddCategoryIdToProduct < ActiveRecord::Migration
  def change
    add_column :products do |t|
      t.integer :category_id, null: false
    end
  end
end
