class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :category_id
      t.string  :title
      t.string  :anchor_name
      t.text    :explanation
      t.text    :ruby
      t.text    :curl

      t.timestamps
    end

    add_index :entries, :anchor_name, :unique => true
  end
end
