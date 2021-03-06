$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'rad_common/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'rad_common'
  s.version     = RadCommon::VERSION
  s.authors     = ['Gary Foster']
  s.email       = ['gary@radicalbear.com']
  s.homepage    = 'http://www.radicalbear.com'
  s.summary     = 'A library of common functions for a rad bear app'
  s.description = 'A library of common functions for a standard business web app, developed by Radical Bear'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'audited', '4.5.0'
  s.add_dependency 'authority', '3.3.0'
  s.add_dependency 'aws-sdk', '2.10.26'
  s.add_dependency 'devise', '4.3.0'
  s.add_dependency 'faker', '1.8.4'
  s.add_dependency 'font-awesome-rails', '4.7.0.2'
  s.add_dependency 'haml-rails', '1.0.0'
  s.add_dependency 'kaminari-bootstrap', '3.0.1'
  s.add_dependency 'koala', '3.0.0'
  s.add_dependency 'omniauth-facebook', '4.0.0'
  s.add_dependency 'paperclip', '5.1.0'
  s.add_dependency 'pg', '0.21.0'
  s.add_dependency 'premailer-rails', '1.9.7'
  s.add_dependency 'rails', '5.0.6'
  s.add_dependency 'schema_auto_foreign_keys', '0.1.3'
  s.add_dependency 'schema_validations', '2.3.0'
  s.add_dependency 'sidekiq', '5.0.4'
  s.add_dependency 'simple_form', '3.5.0'
  s.add_dependency 'twitter-bootstrap-rails', '4.0.0'

  s.add_development_dependency 'capybara', '2.15.1'
  s.add_development_dependency 'database_cleaner', '1.6.1'
  s.add_development_dependency 'dotenv-rails'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rubocop'
end
