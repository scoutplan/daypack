require_relative "lib/daypack/version"

Gem::Specification.new do |spec|
  spec.name = "daypack"
  spec.version = Daypack::VERSION
  spec.authors = ["Ray Bradley"]
  spec.email = ["rgb@fastmail.com"]

  spec.summary = "A few essentials to take on your next Rails adventure."
  spec.description = "Sundry helpers and extensions for Rails development."
  spec.homepage = "https://github.com/scoutplan/daypack"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/scoutplan/daypack"
  spec.metadata["changelog_uri"] = "https://github.com/scoutplan/daypack/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "activesupport", ">= 7.1"
  spec.add_dependency "i18n", "~> 1.14"
end
