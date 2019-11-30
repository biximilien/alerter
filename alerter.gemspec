# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'alerter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'alerter'
  spec.version     = Alerter::VERSION
  spec.authors     = ["Maxime 'biximilien' Gauthier"]
  spec.email       = ['maxime@gauthier.software']
  spec.homepage    = 'http://gauthier.software/alerter'
  spec.summary     = 'Alerter is a notification plugin for Ruby on Rails.'
  spec.description = 'Alerter is a notification plugin for Ruby on Rails.'
  spec.license     = 'MIT'

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.metadata['yard.run'] = 'yri'

  spec.add_dependency 'rails'
  spec.add_dependency 'redcarpet'

  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'capybara'
  spec.add_development_dependency 'factory_bot_rails'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-rails'
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'shoulda'
  spec.add_development_dependency 'shoulda-matchers'
  spec.add_development_dependency 'sqlite3'
  spec.add_development_dependency 'yard'

  spec.test_files = Dir['spec/**/*']
end
