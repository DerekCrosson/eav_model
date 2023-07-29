# frozen_string_literal: true

require_relative "eav_model/version"
require "eav_model/models"
require 'active_support/concern'


module EavModel
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def eav_model_for(attribute_name)
      has_many :eav_attributes, class_name: 'EavModel::EavAttribute', as: :entity
    end
  end
end
