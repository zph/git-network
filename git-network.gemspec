# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git/network/version'

Gem::Specification.new do |spec|
  spec.name          = "git-network"
  spec.version       = Git::Network::VERSION
  spec.authors       = ["ZPH", "Andy Lindeman"]
  spec.email         = ["Zander@civet.ws", "alindeman@gmail.com"]
  spec.description   = %q{TODO: Write a gem description}
  spec.summary       = %q{TODO: Write a gem summary}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rash"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~>2.13.0"
  spec.add_development_dependency "webmock", "~>1.11.0"
  spec.add_development_dependency "vcr", "~>2.5.0"
  spec.add_development_dependency "pry-full"
end
