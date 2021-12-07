lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'zipcodes_usa/version'

Gem::Specification.new do |spec|
  spec.name          = 'zipcodes_usa'
  spec.version       = ZipcodesUsa::VERSION
  spec.authors       = ['Varun Kothari']
  spec.email         = ['varun.kothari007@gmail.com']

  spec.summary       = 'USA Zipcodes list'
  spec.description   = 'USA Zipcodes list where 5G Coverage is available.'
  spec.homepage      = 'http://tout.herokuapp.com'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  spec.metadata['homepage_uri']    = 'http://tout.herokuapp.com'
  spec.metadata['source_code_uri'] = 'http://tout.herokuapp.com'
  # spec.metadata['changelog_uri']   = "Put your gem's CHANGELOG.md URL here."


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
