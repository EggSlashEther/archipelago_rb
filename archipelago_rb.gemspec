# frozen_string_literal: true

require_relative "lib/archipelago_rb/version"

Gem::Specification.new do |spec|
  spec.name = "archipelago_rb"
  spec.version = ArchipelagoRb::VERSION
  spec.authors = ["Yassar Lutfan"]
  spec.email = ["archipelago_ruby@eggslashether.com", "38393055+EggonHub@users.noreply.github.com"]

  spec.summary = "A RubyGem that allows a Ruby-based client to interface with the Archipelago Multiworld Randomizer."
  spec.homepage = "https://github.com/EggonHub/archipelago_rb"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/EggonHub/archipelago_rb"
  spec.metadata["changelog_uri"] = "https://github.com/EggonHub/archipelago_rb/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "websocket-client-simple", "~> 0.8.0"
  spec.add_dependency "json"
  spec.add_dependency "fileutils"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
