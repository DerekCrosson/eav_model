# frozen_string_literal: true

require "test_helper"

class TestEavModel < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::EavModel::VERSION
  end

  def test_creates_an_attribute
    product = Product.create(name: 'Smartphone')
    attribute = product.eav_attributes.create(name: 'Color')

    refute_nil attribute.id
    assert_equal 'Color', attribute.name
  end

  def test_creates_a_string_value_for_the_attribute
    product = Product.create(name: 'Smartphone')
    attribute = product.eav_attributes.create(name: 'Color')
    string_value = attribute.eav_string_values.create(value: 'Black')

    refute_nil string_value.id
    assert_equal 'Black', string_value.value
  end

  def test_fetches_the_values_for_an_attribute
    product = Product.create(name: 'Smartphone')
    attribute = product.eav_attributes.create(name: 'Color')
    string_value = attribute.eav_string_values.create(value: 'Black')

    assert_equal string_value, attribute.eav_string_values.first
  end
end
