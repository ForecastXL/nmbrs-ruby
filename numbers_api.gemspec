# -*- encoding: utf-8 -*-
# $:.push File.expand_path("../lib", __FILE__)
# require "numbers_api/version"
require File.expand_path('../lib/numbers_api/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "numbers_api"
  s.version     = NumbersApi::VERSION
  s.authors     = ["Laurens Nutma"]
  s.email       = ["laurensnutma@gmail.com"]
  s.homepage    = "https://github.com/laurensn/numbers_api"
  s.summary     = "A simple client for the NumbersApi SOAP-based API"
  s.description = "Nmbrs - Easy and flexible HR-Payroll software. The NumbersApi gem is a simple client for their SOAP-based API. http://nmbrs.com/nl/index"

  s.files         = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'savon'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
end
