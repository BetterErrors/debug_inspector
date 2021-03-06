require_relative "lib/rubyvm/debug_inspector/version"

Gem::Specification.new do |spec|
  spec.name          = "debug_inspector"
  spec.version       = RubyVM::DebugInspector::VERSION
  spec.authors       = ["John Mair (banisterfiend)"]
  spec.email         = ["jrmair@gmail.com"]

  spec.summary       = %q{A Ruby wrapper for the MRI 2.0 debug_inspector API}
  spec.description   = spec.summary
  spec.homepage      = "https://github.com/banister/debug_inspector"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.0")

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^test/}) }
  end

  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/rubyvm/debug_inspector/extconf.rb"]
end
