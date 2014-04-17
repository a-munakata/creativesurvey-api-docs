class CreateDocumentTable < ActiveRecord::Migration
  def change
    add_column :docs, :category_id, :integer
    add_column :docs, :anchor_name, :string
    add_column :docs, :source,      :text

    add_index  :docs, :anchor_name, :unique => true
  end
end
