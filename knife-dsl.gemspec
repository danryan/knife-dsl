# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'knife/dsl/version'

Gem::Specification.new do |gem|
  gem.name          = "knife-dsl"
  gem.version       = Chef::Knife::DSL::VERSION
  gem.authors       = ["Erik Hollensbe"]
  gem.email         = ["erik+github@hollensbe.org"]
  gem.description   = %q{A small library that lets you drive Chef's 'knife' programmatically}
  gem.summary       = %q{A small library that lets you drive Chef's 'knife' programmatically}
  gem.homepage      = "https://github.com/hoteltonight/knife-dsl"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'chef', '~> 10.16.0'
end
