module EavModel
  class EavAttribute < ActiveRecord::Base
    belongs_to :entity, polymorphic: true

    has_one :eav_integer_value
    has_one :eav_string_value
    has_one :eav_boolean_value
  end
end
