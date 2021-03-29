# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative "lib/sofen/stylo/version"

Gem::Specification.new do |spec|
  spec.name          = "sofen-stylo"
  spec.version       = Sofen::Stylo::VERSION
  spec.authors       = ["rony"]
  spec.email         = ["code.rony36@gmail.com"]

  spec.summary       = "Simple theme for Shopify look and feel"
  spec.description   = "Simple theme for Shopify look and feel"
  spec.homepage      = "https://github.com/Sofenx"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.4.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Sofenx/sofen-stylo"
  spec.metadata["changelog_uri"] = "https://github.com/Sofenx/sofen-stylo/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
