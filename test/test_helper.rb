# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)

require "active_record"
require "minitest/autorun"
require "eav_model"
require "eav_model/models"

ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: ":memory:")

load File.dirname(__FILE__) + '/schema.rb'

class Minitest::Test
  def setup
    EavModel::EavAttribute.create!(name: 'color', data_type: 'string')
    EavModel::EavAttribute.create!(name: 'weight', data_type: 'float')
    EavModel::EavAttribute.create!(name: 'price', data_type: 'integer')
    EavModel::EavAttribute.create!(name: 'available', data_type: 'boolean')
  end
end
