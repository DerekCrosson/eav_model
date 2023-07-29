module EavModel
  class IntegerValue < ActiveRecord::Base
    belongs_to :attribute
    validates :value, numericality: { only_integer: true }
  end
end
