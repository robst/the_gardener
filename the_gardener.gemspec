# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'the_gardener/version'

Gem::Specification.new do |spec|
  spec.name          = "the_gardener"
  spec.version       = TheGardener::VERSION
  spec.authors       = ["Robert Starke"]
  spec.email         = ["robertst81@gmail.com"]


  spec.summary     = "Gardener, take's care about your seeds!"
  spec.description = "A Gem for versioned seed files. Create seed files and use
                      it like the active record migrations. it has an generator
                      for seeds, and a task to load all seeds. look at the
                      github page for more information."


  spec.homepage      = "https://github.com/robst/the_gardener"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rails', '>= 4.0.0'
  spec.required_ruby_version = '>= 2.0.0'

  spec.add_dependency("rails", "~> 4.0")
end
