class Entry < ActiveRecord::Base
  attr_accessible :category_id,
                  :title,
                  :anchor_name,
                  :explanation,
                  :ruby,
                  :curl,
                  :variables_attributes

  validates_uniqueness_of :anchor_name

  belongs_to :category
  has_many   :variables, :dependent => :destroy

  accepts_nested_attributes_for :variables, :allow_destroy => true

  # TODO: バリデーション + controllerにエラーを返す

end
