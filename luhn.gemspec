# encoding: utf-8

Gem::Specification.new do |gem|
  gem.authors       = ["Eric Chapweske"]
  gem.email         = ["eac@zendesk.com"]
  gem.description   = "Luhn"
  gem.summary       = %q{}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "luhn"
  gem.version       = '0.1.0'
end
