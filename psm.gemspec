
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "psm/version"

Gem::Specification.new do |spec|
  spec.name          = "psm"
  spec.version       = Psm::VERSION
  spec.authors       = ["Sufyan Adam"]
  spec.email         = ["sufyanadam@gmail.com"]

  spec.summary       = %q{A command line utility to post slack messages.}
  spec.description   = %q{A command line utility that posts a given message to a given channel in slack. The user to post as and the emoji_icon are configurable as environment variables}
  spec.homepage      = "https://github.com/sufyanadam/psm"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 2.0"

  spec.add_dependency "rest-client", "~> 2.0"
end
