# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mongoid-encrypted-fields/version'

Gem::Specification.new do |gem|
  gem.name          = 'mongoid-encrypted-fields'
  gem.version       = Mongoid::EncryptedFields::VERSION
  gem.authors       = ['Koan Health']
  gem.email         = ['development@koanhealth.com']
  gem.description   = 'A library for storing encrypted data in Mongo'
  gem.summary       = 'Custom types for storing encrypted data'
  gem.homepage      = 'https://github.com/KoanHealth/mongoid-encrypted-fields'
  gem.license       = 'MIT'

  gem.required_ruby_version     = '>= 2.0.0'
  gem.required_rubygems_version = '>= 1.3.6'

  gem.files         = Dir.glob('lib/**/*') + %w[CHANGELOG.md LICENSE.txt README.md Rakefile]
  gem.test_files    = Dir.glob('spec/**/*')
  gem.require_path  = 'lib'

  gem.add_dependency 'mongoid', '>= 5'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'gibberish'
  gem.add_development_dependency 'encrypted_strings', '~> 0.3'
  gem.add_development_dependency 'simplecov'
end
