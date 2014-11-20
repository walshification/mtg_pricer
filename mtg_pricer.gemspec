# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mtg_pricer/version'

Gem::Specification.new do |spec|
  spec.name          = "mtg_pricer"
  spec.version       = MtgPricer::VERSION
  spec.authors       = ["walshification"]
  spec.email         = ["walshification@gmail.com"]
  spec.summary       = %q{In the console, type a Magic: The Gathering card name to get its current market price.}
  spec.description   = %q{In the console, type a Magic: The Gathering card name to get its current market price.}
  spec.homepage      = "https://github.com/walshification/mtg_pricer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "unirest"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
