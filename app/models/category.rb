class Category < ActiveRecord::Base
  attr_accessible :title, :anchor_name

  has_many :entries

end
