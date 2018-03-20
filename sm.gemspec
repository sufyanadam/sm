
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sm/version"

Gem::Specification.new do |spec|
  spec.name          = "sm"
  spec.version       = Sm::VERSION
  spec.authors       = ["Sufyan Adam"]
  spec.email         = ["sufyanadam@gmail.com"]

  spec.summary       = %q{Post slack messages from the comfort of you command line.}
  spec.description   = %q{A command line utility to post a message to any channel/user in slack. Provide a message as an argument or pipe input to the post-slack-msg command.}
  spec.homepage      = "https://github.com/sufyanadam/sm"
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
