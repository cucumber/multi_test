$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'multi_test'
  s.version     = File.read(File.join(File.expand_path(__dir__),'VERSION'))
  s.authors     = ["Matt Wynne", "Steve Tooke"]
  s.description = 'Wafer-thin gem to help control rogue test/unit/autorun requires'
  s.summary     = "multi-test-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = "https://cucumber.io/"

  s.license     = 'MIT'

  s.required_ruby_version = ">= 2.7"
  s.required_rubygems_version = ">= 1.6.1"

  s.add_development_dependency('rubocop', '~> 1.40.0')

  s.require_path     = "lib"
  s.files            = Dir['lib/**/*', 'CHANGELOG.md', 'LICENSE', 'README.md']
end
