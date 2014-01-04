class AddIndexToBCategory < ActiveRecord::Migration
  def change
    add_column :b_categories, :a_category_id, :integer
    add_index :b_categories, :a_category_id
  end
end
