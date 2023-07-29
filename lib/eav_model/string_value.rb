module EavModel
  class StringValue < ActiveRecord::Base
    belongs_to :attribute
  end
end
