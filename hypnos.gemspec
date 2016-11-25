# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hypnos/version'

Gem::Specification.new do |spec|
  spec.name          = 'hypnos'
  spec.version       = Hypnos::VERSION
  spec.authors       = ['thelastinuit']
  spec.email         = ['cejas@icalialabs.com']

  spec.summary       = 'A Ruby Wrapper for IBM® Text to Speech service.'
  spec.description   = 'A Ruby Wrapper for IBM® Text to Speech service.'
  spec.homepage      = 'https://github.com/IcaliaLabs/hypnos'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'olimpo', '0.1.0'
  spec.add_dependency 'websocket', '1.2.3'

  spec.add_development_dependency 'bundler', '~> 1.12'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry', '~> 0.10'
  spec.add_development_dependency 'guard-rspec', '~> 4.7'
  spec.add_development_dependency 'rubocop', '0.45.0'
  spec.add_development_dependency 'reek', '4.5.2'
end
