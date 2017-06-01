# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hypnos/bot/version'

Gem::Specification.new do |spec|
  spec.name          = "hypnos"
  spec.version       = Hypnos::Bot::VERSION
  spec.authors       = ["thelastinuit"]
  spec.email         = ["cejas@icalialabs.com"]

  spec.summary       = %q{A Ruby wrapper to interact with the Watson Tone Analyzer API.}
  spec.description   = %q{A Ruby wrapper to interact with the Watson Tone Analyzer API.}
  spec.homepage      = "https://www.ibm.com/watson/developercloud/text-to-speech.html"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "olimpo", "~> 0.1.0"
  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
