class Category < ActiveRecord::Base
  attr_accessible :title,
                  :anchor_name

  has_many :docs, :dependent => :destroy

  validates :title, :uniqueness => { scope: :anchor_name }

  scope :has_docs, lambda{ where("id IN (?)", Doc.pluck(:category_id).select{|c| c.present? } ) }
end
