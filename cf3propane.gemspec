# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cf3propane/version'

Gem::Specification.new do |spec|
  spec.name          = 'cf3'
  spec.version       = Cf3propane::VERSION
  spec.authors       = ['Martin Prout']
  spec.email         = ['mamba2928@yahoo.co.uk']
  spec.description   = <<-EOF
    A library for propane, that allows the writing of context free
    sketches (like context free art) in a ruby DSL. It is a bit of a toy
    compared to the c++ version.  However you can get quite a bit of
    satisfaction creating an interesting graphic, and you can't always
    predict what you are going to get.
  EOF
  spec.summary       = %q{A ruby-DSL library for CF3 sketches}
  spec.homepage      = 'https://monkstone.github.io/cf3propane/'
  spec.licenses = %w(GPL-3.0 LGPL-2.0)
  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.add_runtime_dependency 'propane', '~> 3.5'
  spec.platform      = 'java'
  spec.add_development_dependency 'bundler', '~> 2.4'
  spec.add_development_dependency 'rake', '~> 12.3'
end
