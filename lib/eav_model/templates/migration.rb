class CreateEavModelTables < ActiveRecord::Migration[7.0]
  def change
    create_table :eav_attributes do |t|
      t.references :entity, polymorphic: true
      t.string :name
      t.string :data_type

      t.timestamps
    end

    create_table :eav_integer_values do |t|
      t.integer :value
      t.references :eav_attribute, foreign_key: true

      t.timestamps
    end

    create_table :eav_string_values do |t|
      t.string :value
      t.references :eav_attribute, foreign_key: true

      t.timestamps
    end

    create_table :eav_boolean_values do |t|
      t.boolean :value
      t.references :eav_attribute, foreign_key: true

      t.timestamps
    end
  end
end
