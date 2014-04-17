class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|
      t.integer :entry_id
      t.string  :used_variables
      t.string  :explanation

      t.timestamps
    end

    add_index :variables, [:entry_id, :used_variables], :unique => true
  end
end
