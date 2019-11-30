$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "alerter/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "alerter"
  s.version     = Alerter::VERSION
  s.authors     = ["Maxime 'biximilien' Gauthier"]
  s.email       = ["maxime@gauthier.software"]
  s.homepage    = "http://gauthier.software/alerter"
  s.summary     = "Alerter is a notification plugin for Ruby on Rails."
  s.description = "Alerter is a notification plugin for Ruby on Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
  s.add_dependency "redcarpet"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "shoulda"
  s.add_development_dependency "shoulda-matchers"
  s.add_development_dependency "factory_bot_rails"
  s.add_development_dependency "byebug"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-rails"

  s.test_files = Dir["spec/**/*"]
end
