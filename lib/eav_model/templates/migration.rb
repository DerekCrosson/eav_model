class CreateEavModelTables < ActiveRecord::Migration[7.0]
  def change
    create_table :attributes do |t|
      t.references :entity, polymorphic: true
      t.string :name

      t.timestamps
    end

    create_table :integer_values do |t|
      t.integer :value
      t.references :attribute, foreign_key: true

      t.timestamps
    end

    create_table :string_values do |t|
      t.string :value
      t.references :attribute, foreign_key: true

      t.timestamps
    end

    create_table :boolean_values do |t|
      t.boolean :value
      t.references :attribute, foreign_key: true

      t.timestamps
    end
  end
end
