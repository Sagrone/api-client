# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'sagrone/version'

Gem::Specification.new do |spec|
  spec.name          = "sagrone"
  spec.license       = "Apache License 2.0"
  spec.version       = Sagrone::VERSION

  spec.authors       = ["Marius Colacioiu"]
  spec.email         = ["marius.colacioiu@gmail.com"]
  spec.summary       = %q{Ruby Client for Sagrone API.}
  spec.description   = %q{It exposes Ruby objects to interact with the API.}
  spec.homepage      = "https://github.com/Sagrone/api-client"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
