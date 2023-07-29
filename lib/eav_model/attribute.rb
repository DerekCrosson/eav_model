module EavModel
  class Attribute < ActiveRecord::Base
    belongs_to :entity, polymorphic: true

    has_one :integer_value
    has_one :string_value
    has_one :boolean_value
  end
end
