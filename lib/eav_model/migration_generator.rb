module EavModel
  class MigrationGenerator < Rails::Generators::Base
    source_root File.expand_path('templates', __dir__)

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/create_eav_model_tables.rb'
    end
  end
end
