# -*- encoding: utf-8 -*-

=begin
#World News API

#The world's news wrapped into a single API.

The version of the OpenAPI document: 1.2.0
Contact: mail@worldnewsapi.com
Generated by: https://openapi-generator.tech
Generator version: 7.5.0

=end

$:.push File.expand_path("../lib", __FILE__)
require "openapi_client/version"

Gem::Specification.new do |s|
  s.name        = "openapi_client"
  s.version     = OpenapiClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["OpenAPI-Generator"]
  s.email       = ["mail@worldnewsapi.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "World News API Ruby Gem"
  s.description = "The world's news wrapped into a single API."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"
  s.metadata    = {}

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
