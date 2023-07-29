# frozen_string_literal: true

require_relative "eav_model/version"
require 'active_support/concern'

module EavModel
  extend ActiveSupport::Concern

  class_methods do
    def eav_model_for(attr_assoc_name, values_assoc_name)
      class_name = self.name
      has_many attr_assoc_name, -> { where(entity_type: class_name) }, class_name: 'Attribute', foreign_key: :entity_id
      has_many values_assoc_name, through: attr_assoc_name
    end
  end
end

