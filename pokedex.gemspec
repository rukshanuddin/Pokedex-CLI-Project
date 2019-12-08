lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = "pokedex"
  spec.version       = "0.10.0"
  spec.authors       = ["Rukshan Uddin"]
  spec.email         = ["rukshan.uddin@gmail.com"]

  spec.summary       = %q{CLI Pokedex}
  
  spec.homepage      = "https://github.com/rukshanuddin/Pokedex-CLI-Project"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "http://mygemserver.com"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/rukshanuddin/Pokedex-CLI-Project"
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"

  spec.add_development_dependency "nokogiri"
  spec.add_development_dependency "colorize"
  spec.add_development_dependency "pry"
  
end
