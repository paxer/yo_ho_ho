require_relative 'lib/yo_ho_ho/version'

Gem::Specification.new do |spec|
  spec.name          = "yo_ho_ho"
  spec.version       = YoHoHo::VERSION
  spec.authors       = ["Pavel Kotlyar"]
  spec.email         = ["pavel.kotlyar@gmail.com"]

  spec.summary       = %q{A Rack-based Web Framework}
  spec.description   = %q{A learning project to build a Rack-based Web Framework like Rails aiming to understand better of how Rails works}
  spec.homepage      = "https://github.com/paxer/yo_ho_ho"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/paxer/yo_ho_ho"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/paxer/yo_ho_ho"
  spec.metadata["changelog_uri"] = "https://github.com/paxer/yo_ho_ho/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
  spec.add_development_dependency "rack-test"
  spec.add_runtime_dependency "multi_json"
end
