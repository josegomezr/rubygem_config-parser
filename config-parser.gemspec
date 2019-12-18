Gem::Specification.new do |gem|
  gem.name = "config-parser"
  gem.summary = %Q{Parsing an options.yml file into a Hash with convenience.}
  gem.description = "Parsing an options.yml file into a Hash with convenience methods like
overwriting variables per Rails environment and overwriting variables with a local
options_local.yml file."
  gem.homepage = "https://github.com/openSUSE/rubygem_config-parser"
  gem.authors = ['cschum@suse.de', 'tom@opensuse.org', 'kpimenov@suse.de']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.require_paths = ['lib']
  gem.version = '0.3.0'
  gem.license = 'MIT'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'rspec-its'
  gem.add_development_dependency 'deep_merge'
end
