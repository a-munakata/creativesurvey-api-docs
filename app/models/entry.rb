class Entry < ActiveRecord::Base
  attr_accessible :category_id,
                  :title,
                  :anchor_name,
                  :explanation,
                  :ruby,
                  :curl,
                  :variables_attributes

  belongs_to :category
  has_many   :variables, :dependent => :destroy

  accepts_nested_attributes_for :variables, :allow_destroy => true

  validates :category_id, uniqueness: { scope: [ :title, :anchor_name ] }

end
