
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "datetime_formatter/version"

Gem::Specification.new do |spec|
  spec.name          = "datetime_formatter"
  spec.version       = DatetimeFormatter::VERSION
  spec.authors       = ["sivamanikandan"]
  spec.email         = ["siva.mca19@gmail.com"]

  spec.summary       = %q{DatetimeFormatter is useful for follow the same date time format throughout the application.}
  spec.description   = %q{DatetimeFormatter is useful for follow the same date time format throughout the application.}
  spec.homepage      = "https://github.com/railsfactory-sivamanikandan/datetime_formatter"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "https://rubygems.org"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against " \
  #     "public gem pushes."
  # end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_runtime_dependency 'activerecord', '>= 3.2.0'
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
