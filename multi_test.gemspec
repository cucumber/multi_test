# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('lib', __dir__)

Gem::Specification.new do |s|
  s.name        = 'multi_test'
  s.version     = File.read(File.join(File.expand_path(__dir__), 'VERSION'))
  s.authors     = ['Matt Wynne', 'Steve Tooke']
  s.description = 'Wafer thin gem to help control rogue test/unit/autorun requires'
  s.summary     = "multi-test-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = 'https://cucumber.io/'

  s.license     = 'MIT'

  s.required_ruby_version = '>= 3.2.0'
  s.required_rubygems_version = '>= 3.2.8'

  s.add_development_dependency('rubocop', '~> 1.88.2')
  s.add_development_dependency('rubocop-performance', '~> 1.26.1')

  s.require_path     = 'lib'
  s.files            = Dir['lib/**/*', 'CHANGELOG.md', 'LICENSE', 'README.md']
end
