[![Tests](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yaml/badge.svg)](https://github.com/cucumber/multi_test/actions/workflows/test-ruby.yaml)
[![Gem Version](https://badge.fury.io/rb/multi_test.svg)](https://badge.fury.io/rb/multi_test)

This project gives you a uniform interface for whatever testing library has been
loaded into your running Ruby process for Cucumber.

This is used _automatically_ within `cucumber-ruby` to discover and autoload your required assertion library

You can use it manually (But you should never need to) if you want to use the same assertion library as Cucumber
in your own code.

```ruby
require 'multi_test'

my_tests = Object.new
MultiTest.extend_with_best_assertion_library(my_tests)
```
