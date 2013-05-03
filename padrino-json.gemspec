# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'padrino_json'

Gem::Specification.new do |gem|
  gem.name        = 'padrino-json'
  gem.version     = '0.0.4'
  gem.date        = '2013-05-03'
  gem.summary     = "JSON helper for Padrino"
  gem.description = "Adds a json_data helper that returns parsed json request data."
  gem.authors     = ["Yuriy Kharchenko"]
  gem.email       = 'yuri.kharchenko@gmail.com'
  gem.homepage    = 'https://github.com/letmein/padrino-json'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "sinatra"
  gem.add_dependency "oj"
end
