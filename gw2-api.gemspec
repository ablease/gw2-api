# frozen_string_literal: true

require_relative "lib/gw2/api/version"

Gem::Specification.new do |spec|
  spec.name = "gw2-api"
  spec.version = Gw2::Api::VERSION
  spec.authors = ["Rob Nicholas"]
  spec.email = ["rob@projectshiba.com"]

  spec.summary = "This is an API wrapper for the Guild Wars 2 API."
  spec.description = "This is a wrapper to the Guild Wars 2 API. It is designed to make it easier to interact with the API and to provide a more Ruby-like interface to the data provided by the API."
  spec.homepage = "https://github.com/nicholasrobertm/gw2-api"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nicholasrobertm/gw2-api"
  spec.metadata["changelog_uri"] = "https://github.com/nicholasrobertm/gw2-api"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rake", "~> 13.0"
  spec.add_dependency "rspec", "~> 3.0"
  spec.add_dependency "rubocop", "~> 1.21"

end
