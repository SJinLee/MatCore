class CreateACategories < ActiveRecord::Migration
  def change
    create_table :a_categories do |t|
      t.string :name
      t.integer :display

      t.timestamps
    end
  end
end
