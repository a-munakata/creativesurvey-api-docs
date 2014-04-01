class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :title
      t.string :anchor_name

      t.timestamps
    end

    add_index :categories, :anchor_name, :unique => true
  end
end
