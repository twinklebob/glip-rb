# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'glip/version'

Gem::Specification.new do |spec|
  spec.name          = "glip-rb"
  spec.version       = Glip::VERSION
  spec.authors       = ["DLumm"]
  spec.email         = ["david.lumm@twinklebob.co.uk"]
  spec.description   = %q{Ruby library to post messages to glip.com room}
  spec.summary       = %q{Ruby library to post messages to glip.com room}
  spec.homepage      = "https://github.com/twinklebob/glip-rb"
  spec.license       = "MIT"

  spec.files = Dir['lib/   *.rb'] + Dir['bin/*']
  spec.files += Dir['[A-Z]*'] + Dir['test/**/*']
  spec.files.reject! { |fn| fn.include? "CVS" }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
