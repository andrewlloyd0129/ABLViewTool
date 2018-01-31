
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "abl_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "abl_view_tool"
  spec.version       = AblViewTool::VERSION
  spec.authors       = ["andrewlloyd0129"]
  spec.email         = ["andrewlloyd0129@gmail.com"]

  spec.summary       = %q{creates an html copyright for use in Rails applications}
  spec.description   = %q{creates an html copyright for use in Rails applications}
  spec.homepage      = "https://github.com/andrewlloyd0129/ABLViewTool"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
