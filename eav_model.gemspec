# frozen_string_literal: true

require_relative "lib/eav_model/version"

Gem::Specification.new do |spec|
  spec.name = "eav_model"
  spec.version = EavModel::VERSION
  spec.authors = ["Derek Crosson"]
  spec.email = ["derekcrosson18@gmail.com"]

  spec.summary = "Allow usage of the EAV model in your Rails application"
  spec.homepage = "https://github.com/DerekCrosson/eav_model"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/DerekCrosson/eav_model"
  spec.metadata["changelog_uri"] = "https://github.com/DerekCrosson/eav_model/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir['lib/**/*.rb'] + Dir['bin/*'] + ['README.md', 'LICENSE.txt', 'CHANGELOG.md']
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency 'rails', '~> 7.0'
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "sqlite3"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
