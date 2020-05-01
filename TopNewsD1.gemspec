require_relative 'lib/TopNewsD1/version'

Gem::Specification.new do |spec|
  spec.name          = "TopNewsD1"
  spec.version       = TopNewsD1::VERSION
  spec.authors       = ["<ohjacksn>"]
  spec.email         = ["<jacksonmo@me.com>"]

  spec.summary       = %q{Pull latest stories for NCAA D1 Basketball.}
  spec.homepage      = "https://github.com/ohjacksn/CLIGem"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/ohjacksn/CLIGem"
  spec.metadata["changelog_uri"] = "https://github.com/ohjacksn/CLIGem/commits/master/TopNewsD1"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  
  spec.add_dependency "nokogiri"
end
