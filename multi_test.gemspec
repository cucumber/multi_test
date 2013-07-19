# -*- encoding: utf-8 -*-
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require "cucumber/platform"

Gem::Specification.new do |s|
  s.name        = 'multi_test'
  s.version     = '0.0.1'
  s.authors     = ["Matt Wynne", "Steve Tooke"]
  s.description = 'Wafter-thin gem to help us control rogue test/unit requires'
  s.summary     = "multi-test-#{s.version}"
  s.email       = 'cukes@googlegroups.com'
  s.homepage    = "http://cukes.info"

  s.platform    = Gem::Platform::RUBY

  s.rubygems_version = ">= 1.6.1"
  s.files            = `git ls-files`.split("\n").reject {|path| path =~ /\.gitignore$/ }
  s.test_files       = `git ls-files -- {gemfiles,test}/*`.split("\n")
  s.rdoc_options     = ["--charset=UTF-8"]
  s.require_path     = "lib"
end