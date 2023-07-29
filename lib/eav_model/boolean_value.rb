module EavModel
  class BooleanValue < ActiveRecord::Base
    belongs_to :attribute
  end
end
