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
  s.summary     = "Alerter is a notification gem for Ruby on Rails."
  s.description = "Alerter is a notification gem for Ruby on Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency "redcarpet"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "shoulda-matchers", "~> 3.1"
  s.add_development_dependency "factory_girl_rails"

  s.test_files = Dir["spec/**/*"]
end
