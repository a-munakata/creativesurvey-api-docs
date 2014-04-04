class Variable < ActiveRecord::Base
  attr_accessible :entry_id, :used_variables, :explanation

  belongs_to :entry

  # TODO: バリデーション + controllerにエラーを返す
end
