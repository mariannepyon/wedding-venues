
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wedding/venues/version"

Gem::Specification.new do |spec|
  spec.name          = "wedding-venues"
  spec.version       = Wedding::Venues::VERSION
  spec.authors       = ["'Marianne Pyon'"]
  spec.email         = ["'mariannepyon@gmail.com'"]

  spec.summary       = %q{Letting users view what types of wedding venues are available in the East Bay, CA.}
  spec.description   = %q{Users can interact with CLI to view information for each venue in the East Bay, CA. They can view the style, budget and the URL of the venue.}
  spec.homepage      = "https://github.com/mariannepyon/wedding-venues"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://github.com/mariannepyon/wedding-venues'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/mariannepyon/wedding-venues"
    spec.metadata["changelog_uri"] = "https://github.com/mariannepyon/wedding-venues/blob/master/NOTES.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
