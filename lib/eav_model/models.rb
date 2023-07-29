module EavModel
  class EavAttribute < ActiveRecord::Base
    belongs_to :entity, polymorphic: true
    has_many :eav_string_values
    has_many :eav_integer_values
    has_many :eav_boolean_values
  end

  class EavStringValue < ActiveRecord::Base
    belongs_to :eav_attribute
  end

  class EavIntegerValue < ActiveRecord::Base
    belongs_to :eav_attribute
  end

  class EavBooleanValue < ActiveRecord::Base
    belongs_to :eav_attribute
  end
end
