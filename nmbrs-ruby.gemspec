# -*- encoding: utf-8 -*-
# $:.push File.expand_path('../lib', __FILE__)
# require 'nmbrs/version'
require File.expand_path('../lib/nmbrs/version', __FILE__)

Gem::Specification.new do |s|
  s.name          = 'nmbrs-ruby'
  s.version       = Nmbrs::VERSION
  s.authors       = ['ForecastXL']
  s.email         = ['developers@forecastxl.com']
  s.homepage      = 'https://www.forecastxl.com'
  s.summary       = 'A Ruby client for the Nmbrs SOAP-based API'

  s.files         = Dir['{lib}/**/*.rb', 'bin/*', 'LICENSE', '*.md']
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'savon'

  # Development/testing
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
