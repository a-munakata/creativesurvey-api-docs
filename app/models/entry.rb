class Entry < ActiveRecord::Base
  attr_accessible :category_id, :title, :anchor_name, :explanation, :ruby, :curl

  validates_uniqueness_of :anchor_name

  belongs_to :category
  has_many   :variables

end
