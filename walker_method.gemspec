# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'walker_method/version'

Gem::Specification.new do |gem|
  gem.name          = "walker_method"
  gem.version       = WalkerMethod::VERSION
  gem.authors       = ["Andrew Cantino"]
  gem.email         = ["cantino@gmail.com"]
  gem.description   = %q{Ruby implementation of Walker's Alias Method for quickly sampling objects with a given probability distribution}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/cantino/walker_method"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
