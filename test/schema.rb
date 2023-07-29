ActiveRecord::Schema.define do
  create_table :products, force: true do |t|
    t.string :name
    t.timestamps
  end

  create_table :eav_attributes, force: true do |t|
    t.references :entity, polymorphic: true, index: true
    t.string :name
    t.timestamps
  end

  create_table :eav_string_values, force: true do |t|
    t.references :eav_attribute, index: true
    t.string :value
    t.timestamps
  end

  create_table :eav_integer_values, force: true do |t|
    t.references :eav_attribute, index: true
    t.integer :value
    t.timestamps
  end

  create_table :eav_boolean_values, force: true do |t|
    t.references :eav_attribute, index: true
    t.boolean :value
    t.timestamps
  end
end
