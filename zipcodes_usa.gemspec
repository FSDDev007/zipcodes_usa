lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipcodes_usa/version'
require 'zipcodes_usa/query'

Gem::Specification.new do |spec|
  spec.name          = 'zipcodes_usa'
  spec.version       = ZipcodesUsa::VERSION
  spec.authors       = ['Varun Kothari']
  spec.email         = ['varun.kothari007@gmail.com']

  spec.summary       = 'Find USA Zipcodes'
  spec.description   = 'It provides the USA Zipcodes list in which you can easily search any USA zipcode by their code, city, and state name.'
  # '5G Coverage is available.'
  spec.homepage      = 'https://github.com/Throughout-Dev/zipcodes_usa'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri']    = 'https://github.com/Throughout-Dev/zipcodes_usa'
  spec.metadata['source_code_uri'] = 'https://github.com/Throughout-Dev/zipcodes_usa'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = [
    'lib/zipcodes_usa.rb',
    'lib/zipcodes_usa/version.rb',
    'lib/zipcodes_usa/query.rb'
  ]
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
