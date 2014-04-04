class Category < ActiveRecord::Base
  attr_accessible :title,
                  :anchor_name,
                  :entries_attributes

  has_many :entries, :dependent => :destroy

  accepts_nested_attributes_for :entries, :allow_destroy => true

  # TODO: バリデーション + controllerにエラーを返す
end
